//
//  NetworkError.swift
//  ImageFeed
//
//  Created by TATIANA VILDANOVA on 04.10.2023.
//

import Foundation

enum NetworkError: Error {
    case httpStatusCode(Int)
    case urlRequestError(Error)
    case urlSessionError
    case decodingError(Error)
    case invalidStatusCode
    case invalidRequest
    case noData
    case unauthorized
}
