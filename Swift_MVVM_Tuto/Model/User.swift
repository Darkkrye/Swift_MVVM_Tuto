//
//  User.swift
//  Swift_MVVM_Tuto
//
//  Created by Openfield Mobility on 28/02/2018.
//  Copyright © 2018 Openfield. All rights reserved.
//

import UIKit

class User: NSObject {
    public private(set) var lastName: String
    public private(set) var firstName: String
    public private(set) var gender: String
    public private(set) var registrationDate: Date
    public private(set) var imageLink: String
    
    init(lastName: String, firstName: String, gender: String, registrationDate: Date, imageLink: String) {
        self.lastName = lastName
        self.firstName = firstName
        self.gender = gender
        self.registrationDate = registrationDate
        self.imageLink = imageLink
    }
}
