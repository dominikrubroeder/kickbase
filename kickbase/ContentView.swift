//
//  ContentView.swift
//  kickbase
//
//  Created by Dominik Rubröder on 17.04.22.
//

import SwiftUI

// A struct to store exactly one player's data
struct Player: Identifiable {
    let id = UUID()
    let image: String
    let name: String
    let fullname: String
    let team: String
    let teamNumber: Int
    let teamPosition: String
    let marketValue: Int
    let marketTrend: String
    let pointsAll: Int
    let pointsAverage: Int
    let fitnessStatus: String
    let s11: Int
    let occurencies: Int
    let yellowCards: Int
    let goals: Int
    let assists: Int
}

// A view that shows the data for one Player
struct PlayerRow: View {
    var player: Player
    
    var body: some View {
        VStack {
            HStack {
                Text(player.image)
                VStack(alignment: .leading) {
                    VStack(alignment: .leading) {
                        HStack {
                            Text("\(player.teamNumber)")
                            Text(player.teamPosition)
                            Text(player.fitnessStatus)
                        }
                        Text(player.name)
                    }
                    HStack {
                        HStack {
                            VStack(alignment: .leading) {
                                Text("\(player.pointsAll)")
                                Text("Pkt.")
                            }
                            VStack(alignment: .leading) {
                                Text("\(player.pointsAverage)")
                                Text("ø Pkt.")
                            }
                        }
                        Spacer()
                        VStack(alignment: .trailing) {
                            Text("\(player.marketValue)")
                            Text("\(player.fitnessStatus == "up" ? "up" : "down") Marktwert")
                        }
                    }
                }
            }
            HStack {
                Text(player.name)
            }
        }
    }
}

struct ContentView: View {
    let players: [Player] = [
        Player(image: "image", name: "Lewandowski", fullname: "Robert Lewandowski", team: "FC Bayern München", teamNumber: 9, teamPosition: "ANG", marketValue: 60000000, marketTrend: "up", pointsAll: 5567, pointsAverage: 192, fitnessStatus: "fit", s11: 29,occurencies: 29, yellowCards: 2, goals: 32, assists: 1),
        Player(image: "image", name: "Reus", fullname: "Marco Reus", team: "Borussia Dortmund", teamNumber: 11, teamPosition: "MF", marketValue: 53472973, marketTrend: "up", pointsAll: 3702, pointsAverage: 148, fitnessStatus: "fit", s11: 25, occurencies: 25, yellowCards: 2, goals: 9, assists: 10)
    ]
    
    var body: some View {
        List(players) { player in
            PlayerRow(player: player)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
