//
//  WebViewControllerDelegate.swift
//  ImageFeed
//
//  Created by TATIANA VILDANOVA on 08.11.2023.
//

import Foundation

protocol WebViewControllerDelegate: AnyObject {
    func webViewViewController(_ vc: WebViewController, didAuthenticateWithCode code: String)
    func webViewViewControllerDidCancel(_ vc: WebViewController)
}
