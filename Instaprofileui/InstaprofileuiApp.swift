//
//  InstaprofileuiApp.swift
//  Instaprofileui
//
//  Created by Guri Saini on 02/06/22.
//

import SwiftUI

@main
struct InstaprofileuiApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
