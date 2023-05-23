//
//  settingsApp.swift
//  settings
//
//  Created by John on 5/23/23.
//

import SwiftUI

@main
struct settingsApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ContentView()
                    .toolbar {
                        ToolbarItem {
                            Button("clear") {
                            }
                        }
                        ToolbarItem(placement: .navigationBarLeading) {
                            NavigationLink(destination: SettingsView()) {
                                Text("settings")
                            }
                        }
                    }
            }
        }
    }
}

