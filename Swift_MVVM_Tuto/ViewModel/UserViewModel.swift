//
//  UserViewModel.swift
//  Swift_MVVM_Tuto
//
//  Created by Openfield Mobility on 28/02/2018.
//  Copyright © 2018 Openfield. All rights reserved.
//

import Foundation

class UserViewModel: NSObject {
    public private(set) var user: User
    
    public private(set) var nameText: String = ""
    public private(set) var registrationDateText: String = ""
    public private(set) var photoData: Data = Data()
    
    init(user: User) {
        self.user = user
        
        let gender = (user.gender == "M") ? "Monsieur" : "Madame"
        self.nameText = "Bonjour \(gender) \(user.lastName) \(user.firstName)"
        
        let df = DateFormatter()
        df.dateFormat = "dd/MM/YYYY"
        self.registrationDateText = df.string(from: user.registrationDate)
        
        do {
            try self.photoData = Data(contentsOf: URL(string: user.imageLink)!)
        } catch {
            print("Unexpected error: \(error)")
        }
    }
}
