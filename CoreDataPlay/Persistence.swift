//
//  Persistence.swift
//  CoreDataPlay
//
//  Created by Arturas Milius on 2021-01-10.
//

import CoreData

struct PersistenceController {
    static let shared = PersistenceController()
    
    let container: NSPersistentContainer
    
    init() {
        // First name of xcdatamodeld file
        container = NSPersistentContainer(name: "TodosList")
        
        container.loadPersistentStores { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error: \(error)")
            }
        }
    }
}
