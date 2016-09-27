//
//  CoreDataModel.swift
//  ProjectXC8_09
//
//  Created by GIGIGUN on 22/09/2016.
//  Copyright © 2016 GIGIGUN. All rights reserved.
//

import UIKit
import CoreData

class CoreDataModel: NSObject {
    let context : NSManagedObjectContext;
    let myEntityName = "News"

    override init() {
        print(#function);
        
        self.context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext;
    }
    
    
    func getNewNewsObj() -> News {
        return News.init(entity: NSEntityDescription.entity(forEntityName: "News", in:context)!, insertInto: context);
    }
    
    func saveAllContext() {
        do {
            try self.context.save()
        } catch {
            fatalError("\(error)")
        }
    }
    
    func saveObj(newsObj : News) {
        
        let newObj : NSManagedObject = NSEntityDescription.insertNewObject(forEntityName: myEntityName, into: self.context);
        
        newObj.setValue(newsObj.date!, forKey: "date");
        newObj.setValue(newsObj.detailed, forKey: "detailed");
        newObj.setValue(newsObj.title, forKey: "title");
        
        do {
            try self.context.save()
        } catch {
            fatalError("\(error)")
        }
    }
    
    func readObj() -> [News] {
        let request:NSFetchRequest<NSFetchRequestResult> = NSFetchRequest(entityName: myEntityName)
        request.sortDescriptors = [NSSortDescriptor(key: "title", ascending: true)]
        
        do {
            let results =
                try self.context.fetch(request) as! [News];
            
            return results;
//
//            print("result count = \(results.count)");
//            
//            for result in results {
//                print(result);
//                print(result.value(forKey: "date")!);
//                print(result.value(forKey: "title")!);
//            }
//            
            
        } catch {
            fatalError("\(error)")
        }

        
    }
}
