//
//  File.swift
//  ImageFeed
//
//  Created by TATIANA VILDANOVA on 05.09.2023.
//

import UIKit

protocol ImagesListCellDelegate: AnyObject {
    func imageListCellDidTapLike(_ cell: ImagesListCell)
}

final class ImagesListCell: UITableViewCell {
    static let reuseIdentifier = "ImagesListCell"
    weak var delegate: ImagesListCellDelegate?
    private var gradientInited = false
    
    @IBOutlet var gradientView: UIImageView!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var cellImage: UIImageView!
    @IBOutlet var likeButton: UIButton!
    
    @IBAction func likeButtonClicked(_ sender: UIButton) {
        delegate?.imageListCellDidTapLike(self)
    }
   
    override func prepareForReuse(){
        super.prepareForReuse()
        cellImage.kf.cancelDownloadTask()
    }
    
    func configureGradient() {
        if !gradientInited {
            let gradient = CAGradientLayer()
            gradient.frame = gradientView.bounds
            gradient.colors = [UIColor.clear.cgColor, UIColor(red: 26/255, green: 27/255, blue: 34/255, alpha: 0.2).cgColor]
            gradientView.layer.insertSublayer(gradient, at: 0)
            gradientInited.toggle()
        }
    }
    
    func setIsLiked(isLiked: Bool) {
        let likeImage = isLiked ? UIImage(named: "like_active") : UIImage(named: "like_not_active")
        likeButton.setImage(likeImage, for: .normal)
    }
}

