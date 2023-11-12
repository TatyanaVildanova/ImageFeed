//
//  AuthViewControlletDelegate.swift
//  ImageFeed
//
//  Created by TATIANA VILDANOVA on 08.11.2023.
//

import Foundation

protocol AuthViewControllerDelegate: AnyObject {
    func authViewController(_ vc: AuthViewController, didAuthenticateWithCode code: String)
}

