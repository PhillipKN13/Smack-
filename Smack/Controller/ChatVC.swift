//
//  ChatVC.swift
//  Smack
//
//  Created by Phillip Nguyen on 1/11/18.
//  Copyright © 2018 Phillip Nguyen. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {

    //Outlets
    @IBOutlet weak var menuBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)  //reveals the SWRevealViewController when menuBtn gets pressed
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer()) //lets you slide the SWRevealVC out
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer()) //hides the SWRevealVC when chatVC gets tapped
    }

  
}
