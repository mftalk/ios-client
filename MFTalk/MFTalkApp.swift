//
//  MFTalkApp.swift
//  MFTalk
//
//  Created by B on 27/10/25.
//

import SwiftUI
import SwiftData

@main
struct MFTalkApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)
        //let testelement = amberCencrypt("hello!","pizzalover122", 435534, 35423245)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
