//
//  CollectionViewCell.swift
//  ProvaEmoji
//
//  Created by Marco Romano on 05/12/2017.
//  Copyright © 2017 com.academy. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet var avatarImage: UIImageView!
    @IBOutlet var avatarLabel: UILabel!
    
    func displayContent(image: UIImage, title: String) {
        avatarImage.image = image
        avatarLabel.text = title
    }
}
