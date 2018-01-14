//
//  AuthService.swift
//  Smack
//
//  Created by Phillip Nguyen on 1/13/18.
//  Copyright © 2018 Phillip Nguyen. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

//used for log in, create user, register user funcs, vars stored in user defaults

class AuthService {
    
    static let instance = AuthService()
    
    let defaults =  UserDefaults.standard
    
    var isLoggedIn: Bool {
        get {
            return defaults.bool(forKey: LOGGED_IN_KEY)
        }
        set {
            defaults.set(newValue, forKey: LOGGED_IN_KEY)
        }
    }
    
    var authToken: String {
        get {
            return defaults.value(forKey: TOKEN_KEY) as! String   //have to force cast to String bc defaults.value() returns Any?
        }
        set {
            defaults.set(newValue, forKey: TOKEN_KEY)
        }
    }
    
    var userEmail: String {
        get {
            return defaults.value(forKey: USER_EMAIL) as! String
        }
        set {
            defaults.set(newValue, forKey: USER_EMAIL)
        }
    }
    
    func registerUser(email: String, password: String, completion: @escaping CompletionHandler) {
        
        let lowerCaseEmail = email.lowercased()
        let body: [String: Any] = [
            "email": lowerCaseEmail,
            "password": password
        ]
        
        Alamofire.request(URL_REGISTER, method: .post, parameters: body, encoding: JSONEncoding.default , headers: HEADER).responseString { (response) in
            
            if response.result.error == nil { //API doesn't really send back any data to use like in loginUser
                completion(true)
            } else {
                completion(false)
                debugPrint(response.result.error as Any)
            }
        }
    }
    
    func loginUser(email: String, password: String, completion: @escaping CompletionHandler) {
        
        let lowerCaseEmail = email.lowercased()
        
        let body: [String: Any] = [ //dict
            "email": lowerCaseEmail,
            "password": password
        ]
        
        Alamofire.request(URL_LOGIN, method: .post, parameters: body, encoding: JSONEncoding.default, headers: HEADER).responseJSON { (response) in
            
            if response.result.error == nil {
                guard let data = response.data else { return }
                do {  //add do/catch bc swiftyJSON initializer throws
                let json = try JSON(data: data)
                self.userEmail = json["user"].stringValue  //.stringValue safely automatically unwraps the val for you OR it'll set it to an empty string
                self.authToken = json["token"].stringValue
                
                self.isLoggedIn = true 
                completion(true)
                } catch {
                    print(error)
                }
            } else {
                completion(false)
                debugPrint(response.result.error as Any)
            }
        }
        
        
        
    }
    
    
    
    
    
    
    
    
}
