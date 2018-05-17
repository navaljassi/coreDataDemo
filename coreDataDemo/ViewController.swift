//
//  ViewController.swift
//  coreDataDemo
//
//  Created by Naval Jassi on 15/5/18.
//  Copyright © 2018 Naval Jassi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtAddress: UITextField!
    @IBOutlet weak var txtCity: UITextField!
    @IBOutlet weak var txtMobile: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func btnSaveClick(_ sender: Any) {
        
        
        let dict = ["nameV":txtName.text,"addressV":txtAddress.text,"cityV":txtCity.text,"mobileV":txtMobile.text]
        
        DatabaseHelper.shareInstance.save(object: dict as! [String : String])
    }
    
}

