//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Lambda_School_Loaner_204 on 1/4/21.
//

import SwiftUI

@main
struct LandmarksApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
