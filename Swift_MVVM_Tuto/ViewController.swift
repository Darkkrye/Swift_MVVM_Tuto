//
//  ViewController.swift
//  Swift_MVVM_Tuto
//
//  Created by Openfield Mobility on 28/02/2018.
//  Copyright © 2018 Openfield. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var userViewModel: UserViewModel?
    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblRegistrationDate: UILabel!
    @IBOutlet weak var imgUser: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        guard let uvm = userViewModel else {
            return
        }
        
        self.lblName.text = uvm.nameText
        self.lblRegistrationDate.text = uvm.registrationDateText
        self.imgUser.image = UIImage(data: uvm.photoData)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

