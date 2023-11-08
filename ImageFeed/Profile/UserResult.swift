//
//  UserResult.swift
//  ImageFeed
//
//  Created by TATIANA VILDANOVA on 18.10.2023.
//

import UIKit

struct UserResult: Codable {
    let profileImage: [String:String]
    
    enum CodingKeys: String, CodingKey {
        case profileImage = "profile_image"
    }
}
