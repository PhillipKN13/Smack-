//
//  UserDataService.swift
//  Smack
//
//  Created by Phillip Nguyen on 1/14/18.
//  Copyright © 2018 Phillip Nguyen. All rights reserved.
//

import Foundation

class UserDataService {
    
    static let instance = UserDataService()
    
    public private(set) var id = ""
    public private(set) var avatarColor = ""
    public private(set) var avatarName  = ""
    public private(set) var email = ""
    public private(set) var name = ""

    func setUserData(id: String, color: String, avatarName: String, email: String, name: String) {
        self.id = id
        self.avatarColor = color
        self.avatarName = avatarName
        self.email = email
        self.name = name
    }
 
    func setAvatarName(avatarName: String) {
        self.avatarName = avatarName
    }
    
    func returnUIColor(components: String) -> UIColor {
        let scanner = Scanner(string: components)
        let skipped = CharacterSet(charactersIn: "[], ")
        let comma = CharacterSet(charactersIn: ",")
        scanner.charactersToBeSkipped = skipped
        
        var r,g,b,a : NSString?
        
        scanner.scanUpToCharacters(from: comma, into: &r) //scans up to comma and stores in r
        scanner.scanUpToCharacters(from: comma, into: &g)
        scanner.scanUpToCharacters(from: comma, into: &b)
        scanner.scanUpToCharacters(from: comma, into: &a)
        
        let defaultColor = UIColor.lightGray
        
        guard let rUnWrapped = r else { return defaultColor }
        guard let gUnWrapped = g else { return defaultColor }
        guard let bUnWrapped = b else { return defaultColor }
        guard let aUnWrapped = a else { return defaultColor }
        
        let rfloat = CGFloat(rUnWrapped.doubleValue)
        let gfloat = CGFloat(gUnWrapped.doubleValue)
        let bfloat = CGFloat(bUnWrapped.doubleValue)
        let afloat = CGFloat(aUnWrapped.doubleValue)
        
        let newUIColor = UIColor(red: rfloat, green: gfloat, blue: bfloat, alpha: afloat)
        
        
        return newUIColor
    }
    
    
    
    
    
    
}
