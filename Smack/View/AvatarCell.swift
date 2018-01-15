//
//  AvatarCell.swift
//  Smack
//
//  Created by Phillip Nguyen on 1/14/18.
//  Copyright © 2018 Phillip Nguyen. All rights reserved.
//

import UIKit

class AvatarCell: UICollectionViewCell {
    
    @IBOutlet weak var avatarImg: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpView()
    }
    
    func setUpView() {
        self.layer.backgroundColor = UIColor.lightGray.cgColor
        self.layer.cornerRadius = 10
        self.clipsToBounds = true 
    }

    
    
    
}
