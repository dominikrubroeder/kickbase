//
//  ContentView.swift
//  kickbase
//
//  Created by Dominik Rubröder on 17.04.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            BaseView()
                .tabItem {
                    Label("Base", systemImage: "person")
                }
            
            TransferView()
                .tabItem {
                    Label("Transfers", systemImage: "book")
                }
            
            TeamView()
                .tabItem {
                    Label("Team", systemImage: "star")
                }
            
            LiveView()
                .tabItem {
                    Label("Live", systemImage: "hand.thumbsup")
                }
            
            LigaView()
                .tabItem {
                    Label("Liga", systemImage: "hand.thumbsup")
                }
            
            BundesligaView()
                .tabItem {
                    Label("Bundesliga", systemImage: "hand.thumbsup")
                }
            
            SettingsView()
                .tabItem {
                    Label("Einstellungen", systemImage: "hand.thumbsup")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
