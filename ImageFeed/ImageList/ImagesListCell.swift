//
//  File.swift
//  ImageFeed
//
//  Created by TATIANA VILDANOVA on 05.09.2023.
//

import Foundation

import UIKit

final class ImagesListCell: UITableViewCell {
    static let reuseIdentifier = "ImagesListCell"
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
}
