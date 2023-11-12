//
//  Constants.swift
//  ImageFeed
//
//  Created by TATIANA VILDANOVA on 29.09.2023.
//

import Foundation

struct KeyAndUrl {
    static let accessKey = "EcV2mK5dqQ-PYU8-HCITILgb_kcWZEO981PwtbJngIo"
    static let secretKey = "TJLy1ZShNwC2i0vGUavQUNgbJvo1JX4DGpkoTxpGs0w"
    static let redirectURI = "urn:ietf:wg:oauth:2.0:oob"
    static let accessScope = "public+read_user+write_likes"
    static let defaultBaseURL = URL(string: "https://api.unsplash.com")!
    static let unsplashAuthorizeUrlString = "https://unsplash.com/oauth/authorize"
    static let defaultBaseApiUrl = URL(string: "https://api.unsplash.com/")!
    static let tokenKey = "ImageFeedOAuth2Token"
}
