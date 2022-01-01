//
//  User+CoreDataProperties.swift
//  CoreDataApp2
//
//  Created by Eugene on 01.01.2022.
//
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User")
    }

    @NSManaged public var age: Int16
    @NSManaged public var name: String?
    @NSManaged public var isMain: Bool
    @NSManaged public var company: Company?

}

extension User : Identifiable {

}
