//
//  LandmarkApp.swift
//  Landmark
//
//  Created by Arif Rahman Sidik on 13/09/21.
//

import SwiftUI

@main
struct LandmarkApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
