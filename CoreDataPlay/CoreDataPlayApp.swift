//
//  CoreDataPlayApp.swift
//  CoreDataPlay
//
//  Created by Arturas Milius on 2021-01-10.
//

import SwiftUI

@main
struct CoreDataPlayApp: App {
    
    //PersistenceController is in Persistence view
    let persistenceContainer = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceContainer.container.viewContext)
        }
    }
}
