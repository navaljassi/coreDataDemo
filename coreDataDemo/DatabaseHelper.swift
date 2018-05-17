//
//  DatabaseHelper.swift
//  coreDataDemo
//
//  Created by Naval Jassi on 15/5/18.
//  Copyright © 2018 Naval Jassi. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class DatabaseHelper {
    
    static var shareInstance = DatabaseHelper()
    
    let context1 = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext
    
    //Save data in
    func save(object:[String:String]){
        let student = NSEntityDescription.insertNewObject(forEntityName: "Students", into: context1!) as! Students
        
        student.name = object["nameV"]
        student.address = object["addressV"]
        student.city = object["cityV"]
        student.mobile = object["mobileV"]
        
        do{
            try context1?.save()
        }
        catch{
            print("Data Is Not Save")
        }
    }
    
    // Get the data from the database
    func getStudentData() ->[Students] {
        var student = [Students]()
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Students")
        
        do{
            student = try context1?.fetch(fetchRequest) as! [Students]
        }
        catch{
            print("can not get data")
        }
        return student
    }
    
    
}
