//
//  News+CoreDataProperties.swift
//  ProjectXC8_09
//
//  Created by GIGIGUN on 24/09/2016.
//  Copyright © 2016 GIGIGUN. All rights reserved.
//

import Foundation
import CoreData


extension News {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<News> {
        return NSFetchRequest<News>(entityName: "News");
    }

    @NSManaged public var date: NSDate?
    @NSManaged public var detailed: String?
    @NSManaged public var title: String?

}
