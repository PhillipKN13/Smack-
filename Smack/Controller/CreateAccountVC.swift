//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Phillip Nguyen on 1/11/18.
//  Copyright © 2018 Phillip Nguyen. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
}
