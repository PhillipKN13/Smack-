//
//  ChannelVC.swift
//  Smack
//
//  Created by Phillip Nguyen on 1/11/18.
//  Copyright © 2018 Phillip Nguyen. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
       
    }


}
