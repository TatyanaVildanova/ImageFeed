//
//  URLRequest+Extensions.swift
//  ImageFeed
//
//  Created by TATIANA VILDANOVA on 04.10.2023.
//

import Foundation

extension URLRequest {
    static func makeHTTPRequest(
        path: String,
        httpMethod: String,
        baseURL: URL = defaultBaseURL!
    ) -> URLRequest {
        var request = URLRequest(url: URL(string: path, relativeTo: baseURL)!)
        request.httpMethod = httpMethod
        return request
    }
}

