//
//  RoundedButton.swift
//  Smack
//
//  Created by Phillip Nguyen on 1/13/18.
//  Copyright © 2018 Phillip Nguyen. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedButton: UIButton {
    
    @IBInspectable var cornerRadius: CGFloat = 3.0 { //IBInspectable shows up under attributes
        didSet {
            self.layer.cornerRadius = cornerRadius //sets to the new one we just set
        }
    }
    
    override func awakeFromNib() {
        self.setupView()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.setupView()
    }
    
    func setupView() {
        self.layer.cornerRadius = cornerRadius
    }
    
}
