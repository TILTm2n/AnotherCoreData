//
//  User+CoreDataProperties.swift
//  CoreDataApp2
//
//  Created by Eugene on 20.12.2021.
//
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User")
    }

    @NSManaged public var name: String?
    @NSManaged public var age: Int16
    @NSManaged public var company: Company?

}

extension User : Identifiable {

}
