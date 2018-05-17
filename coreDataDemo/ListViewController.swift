//
//  ListViewController.swift
//  coreDataDemo
//
//  Created by Naval Jassi on 15/5/18.
//  Copyright © 2018 Naval Jassi. All rights reserved.
//

import UIKit

class ListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var student = [Students]()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        student = DatabaseHelper.shareInstance.getStudentData()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return student.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        
        cell.lblName.text = student[indexPath.row].name
        cell.lblAddress.text = student[indexPath.row].address
        cell.lblMobile.text = student[indexPath.row].mobile
        cell.lblCity.text = student[indexPath.row].city

        
        return cell
    }
}
