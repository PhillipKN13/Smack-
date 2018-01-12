//
//  GradientView.swift
//  Smack
//
//  Created by Phillip Nguyen on 1/11/18.
//  Copyright © 2018 Phillip Nguyen. All rights reserved.
//

import UIKit

@IBDesignable
class GradientView: UIView {

    @IBInspectable var topColor: UIColor = #colorLiteral(red: 0.2901960784, green: 0.3019607843, blue: 0.8470588235, alpha: 1) {
        didSet {
            self.setNeedsLayout() //updates the layout of view
        }
    }
    
    @IBInspectable var bottomColor: UIColor = #colorLiteral(red: 0.1725490196, green: 0.831372549, blue: 0.8470588235, alpha: 1) {
        didSet {
            self.setNeedsLayout() //updates the layout of view
        }
    }
    
    override func layoutSubviews() { //after using .setNeedsLayout, it calls this function
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor] //colors used for gradient
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.frame = self.bounds //sets frame of gradientLayer to size of UIView's bounds
        self.layer.insertSublayer(gradientLayer, at: 0)  //adds the gradientLayer to the UIView at 0, which is the first layer
    }
    
    
}
