//
//  User.swift
//  Example
//
//  Created by Joel on 05/04/2017.
//  Copyright © 2017 HELM S.C.P. All rights reserved.
//

import Foundation

struct User {
    
    let name: Name
    let gender: String
    let email: String
    let phone: String
    let mobile: String
    let location: Location
    let imagePath: String
    let thumbImagePath: String
    
    init(name: Name, gender: String, email: String, phone: String, mobile: String, location: Location, imagePath: String, thumbImagePath: String) {
        self.name = name
        self.gender = gender
        self.email = email
        self.phone = phone
        self.mobile = mobile
        self.location = location
        self.imagePath = imagePath
        self.thumbImagePath = thumbImagePath
    }
}
