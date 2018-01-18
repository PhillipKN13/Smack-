//
//  CircleImage.swift
//  Smack
//
//  Created by Phillip Nguyen on 1/16/18.
//  Copyright © 2018 Phillip Nguyen. All rights reserved.
//

import UIKit

@IBDesignable
class CircleImage: UIImageView {

    override func awakeFromNib() {
        setUpView()
    }
    
    func setUpView() {
        self.layer.cornerRadius = self.frame.width / 2  //gives circle shape
        self.clipsToBounds = true
    }

    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setUpView()
    }
}
