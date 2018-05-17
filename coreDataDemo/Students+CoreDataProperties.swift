//
//  Students+CoreDataProperties.swift
//  coreDataDemo
//
//  Created by Naval Jassi on 15/5/18.
//  Copyright © 2018 Naval Jassi. All rights reserved.
//
//

import Foundation
import CoreData


extension Students {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Students> {
        return NSFetchRequest<Students>(entityName: "Students")
    }

    @NSManaged public var address: String?
    @NSManaged public var city: String?
    @NSManaged public var mobile: String?
    @NSManaged public var name: String?

}
