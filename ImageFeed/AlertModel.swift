//
//  AlertModel.swift
//  ImageFeed
//
//  Created by TATIANA VILDANOVA on 08.11.2023.
//

import Foundation

struct AlertModel {
    let title: String
    let message: String
    let buttonText: String
    let completion: () -> Void
    var nextButtonText: String?
    var nextCompletion: () -> Void = {}
}
