//
//  OAuth2TokenStorage.swift
//  ImageFeed
//
//  Created by TATIANA VILDANOVA on 03.10.2023.
//

import Foundation
import SwiftKeychainWrapper

final class OAuth2TokenStorage {
    static let shared = OAuth2TokenStorage()
    private let keyChainWrapper = KeychainWrapper.standard

    private init() {}

    var token: String? {
        get {
            return keyChainWrapper.string(forKey: tokenKey)
        }
        set {
            guard let newValue = newValue  else { return }
            keyChainWrapper.set(newValue, forKey: tokenKey)
        }
    }
}
