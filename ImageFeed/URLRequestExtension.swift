//
//  URLRequestExtension.swift
//  ImageFeed
//
//  Created by TATIANA VILDANOVA on 13.10.2023.
//

import UIKit

extension URLRequest {
    static func makeHTTPRequest(
        path: String,
        httpMethod: String,
        baseURL: URL? = DefaultBaseURL
    ) -> URLRequest? {
        var request = URLRequest(url: URL(string: path, relativeTo: baseURL) ?? DefaultBaseURL)
        request.httpMethod = httpMethod
        return request
    }
}



