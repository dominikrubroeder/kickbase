//
//  TeamView.swift
//  kickbase
//
//  Created by Dominik Rubröder on 17.04.22.
//

import SwiftUI

struct TeamView: View {
    var body: some View {
        ScrollView {
            ZStack {
                VStack(spacing: 32) {
                    HStack {
                        LineupPlayer()
                        LineupPlayer()
                    }
                    HStack {
                        LineupPlayer()
                        LineupPlayer()
                        LineupPlayer()
                        LineupPlayer()
                        LineupPlayer()
                    }
                    HStack {
                        LineupPlayer()
                        LineupPlayer()
                        LineupPlayer()
                    }
                    LineupPlayer()
                }
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.green)
            
            Text("Testing")
        }
    }
}

struct TeamView_Previews: PreviewProvider {
    static var previews: some View {
        TeamView()
    }
}

struct LineupPlayer: View {
    var body: some View {
        VStack(spacing: 0) {
            Image(systemName: "person.fill")
                .padding()
                .background(
                    Circle()
                        .fill(Color.white)
                        .frame(width: 40, height: 40)
                )
            Text("Name")
                .font(.caption)
                .textCase(.uppercase)
        }
    }
}
