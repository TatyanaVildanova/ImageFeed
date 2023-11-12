//
//  OAuth2TokenStorage.swift
//  ImageFeed
//
//  Created by TATIANA VILDANOVA on 03.10.2023.
//

import Foundation
import SwiftKeychainWrapper

class OAuth2TokenStorage {
    
    static let shared = OAuth2TokenStorage()
    private let keyChainWrapper = KeychainWrapper.standard
    private let keyToken = "Bearer"
    private enum Keys: String {
        case token
    }
    
    var token: String? {
        get {
            keyChainWrapper.string(forKey: keyToken)
        }
        set {
            if let token = newValue {
                keyChainWrapper.set(token, forKey: keyToken)
            } else {
                keyChainWrapper.removeObject(forKey: keyToken)
            }
        }
    }
    
    init() {}
}
