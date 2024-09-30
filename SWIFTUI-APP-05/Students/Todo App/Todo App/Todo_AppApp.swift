//
//  Todo_AppApp.swift
//  Todo App
//
//  Created by Kwesi A Botchey on 30/09/2024.
//

import SwiftUI

@main
struct Todo_AppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
