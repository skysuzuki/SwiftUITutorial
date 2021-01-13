//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Lambda_School_Loaner_204 on 1/4/21.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
