//
//  ProfileImageModel.swift
//  ImageFeed
//
//  Created by TATIANA VILDANOVA on 08.11.2023.
//

import Foundation

struct ProfileImage: Codable {
    let smallImage: [String:String]
    
    init(callData: UserResult) {
        self.smallImage = callData.profileImage
    }
}
