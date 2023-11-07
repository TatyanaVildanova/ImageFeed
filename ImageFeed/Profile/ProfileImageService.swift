//
//  ProfileImageService.swift
//  ImageFeed
//
//  Created by TATIANA VILDANOVA on 18.10.2023.
//

import Foundation

final class ProfileImageService {
    
    static let shared = ProfileImageService()
    static let didChangeNotification = Notification.Name(rawValue: "ProfileImageProviderDidChange")
    private (set) var avatarURL: URL?
    private var task: URLSessionTask?
    
    private init(
        avatarURL: URL? = nil,
        task: URLSessionTask? = nil
    ) {
        self.avatarURL = avatarURL
        self.task = task
    }
    
    func fetchProfileImageURL(username: String,
                              _ completion: @escaping (Result<String, Error>) -> Void) {
        assert(Thread.isMainThread)
        
        guard let request = makeRequest(username: username) else { return }
        let session = URLSession.shared
        let task = session.descTask(for: request) { [weak self]
            (result: Result<UserResult, Error>) in
            guard let self = self else { return }
            
            switch result {
            case .success(let profilePhoto):
                guard let largePhoto = profilePhoto.profileImage?.large else { return }
                self.avatarURL = URL(string: largePhoto)
                completion(.success(largePhoto))
                NotificationCenter.default.post(
                    name: ProfileImageService.didChangeNotification,
                    object: self,
                    userInfo: ["URL": largePhoto]
                )
            case .failure(let error):
                completion(.failure(error))
            }
            self.task = nil
        }
        self.task = task
        task.resume()
    }
    
    private func makeRequest(username: String) -> URLRequest? {
        var urlComponents = URLComponents()
        urlComponents.scheme = "https"
        urlComponents.host = "api.unsplash.com"
        urlComponents.path = "/users/\(username)"
        urlComponents.queryItems = [URLQueryItem(name: "client_id", value: accessKey)]
        
        guard let url = urlComponents.url else {
            fatalError("Failed to create Avatar URL")
        }
        
        var request = URLRequest(url: url)
        
        request.httpMethod = "GET"
        
        if let token = OAuth2TokenStorage.shared.token {
            request.setValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
        }
        return request
    }
}


