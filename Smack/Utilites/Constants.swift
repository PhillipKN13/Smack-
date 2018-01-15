//
//  Constants.swift
//  Smack
//
//  Created by Phillip Nguyen on 1/11/18.
//  Copyright © 2018 Phillip Nguyen. All rights reserved.
//

import Foundation

typealias CompletionHandler = (_ Success: Bool) -> ()

// URL Constants
let BASE_URL = "https://chattychattychattychatty.herokuapp.com/v1/" //added v1 at end for version 1
let URL_REGISTER = "\(BASE_URL)account/register"
let URL_LOGIN = "\(BASE_URL)account/login"
let URL_USER_ADD = "\(BASE_URL)user/add"

// Segues
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"
let TO_AVATAR_PICKER = "toAvatarPicker"

// User Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"

//Headers
let HEADER = [ //from header of API
    "Content-Type": "application/json; charset=utf-8"
]
