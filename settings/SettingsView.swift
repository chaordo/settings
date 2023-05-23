//
//  SettingsView.swift
//  settings
//
//  Created by John on 5/23/23.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("USER OPTIONS")) {
                    NavigationLink(destination: Text("Notifications")) {
                        Label("Notifications", systemImage: "bell.fill")
                    }
                    NavigationLink(destination: Text("Theme")) {
                        Label("Theme", systemImage: "eye.fill")
                    }
                }
                
                Section(header: Text("SUPPORT")) {
                    NavigationLink(destination: TipsView()) {
                        Label("Tips for Use", systemImage: "person.fill.questionmark")
                    }
                    NavigationLink(destination: ContactUsView()) {
                        Label("Contact Us", systemImage: "person.fill.questionmark")
                    }
                    NavigationLink(destination: Text("Feedback")) {
                        Label("Feature Request", systemImage: "clipboard.fill")
                    }
                    NavigationLink(destination: Text("Feedback")) {
                        Label("Feedback", systemImage: "square.and.pencil")
                    }
                    Link(destination: URL(string: "https://apps.apple.com/")!)  {
                        Label("Rate in App Store", systemImage: "star.fill")
                    }
                    Text("version 1.0")
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Settings")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
