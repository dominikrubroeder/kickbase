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
                    Label("Base", systemImage: "newspaper.fill")
                }
            
            TransferView()
                .tabItem {
                    Label("Transfers", systemImage: "person.fill.and.arrow.left.and.arrow.right")
                }
            
            TeamView()
                .tabItem {
                    Label("Team", systemImage: "person.3.fill")
                }
            
            LiveView()
                .tabItem {
                    Label("Live", systemImage: "play.tv")
                }
            
            LigaView()
                .tabItem {
                    Label("Liga", systemImage: "star.fill")
                }
            
            BundesligaView()
                .tabItem {
                    Label("Bundesliga", systemImage: "tablecells.fill")
                }
            
            SettingsView()
                .tabItem {
                    Label("Einstellungen", systemImage: "gearshape.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
