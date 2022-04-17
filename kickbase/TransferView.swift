//
//  TransferView.swift
//  kickbase
//
//  Created by Dominik Rubröder on 17.04.22.
//

import SwiftUI

// A view that shows the data for one Player
struct PlayerRow: View {
    var player: Player
    @State private var offer: String = ""
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "\(player.image)")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 75.0)
                VStack(alignment: .leading, spacing: 16.0) {
                    VStack(alignment: .leading) {
                        HStack {
                            Text("\(player.teamNumber)")
                                .font(.caption)
                            Text(player.teamPosition)
                                .font(.caption)
                                .textCase(.uppercase)
                            Text(player.fitnessStatus)
                                .font(.caption)
                                .textCase(.uppercase)
                        }
                        Text(player.name)
                            .font(.title)
                            .fontWeight(.bold)
                    }
                    HStack {
                        HStack {
                            VStack(alignment: .leading) {
                                Text("\(player.pointsAll)")
                                    .fontWeight(.bold)
                                Text("Pkt.")
                                    .font(.caption)
                            }
                            VStack(alignment: .leading) {
                                Text("\(player.pointsAverage)")
                                    .fontWeight(.bold)
                                Text("ø Pkt.")
                                    .font(.caption)
                            }
                        }
                        Spacer()
                        VStack(alignment: .trailing) {
                            Text("\(player.marketValue)")
                                .fontWeight(.bold)
                            HStack {
                                if player.marketTrend == "up" {
                                    Image(systemName: "chevron.up")
                                        .foregroundColor(Color.green)
                                } else {
                                    Image(systemName: "chevron.down")
                                        .foregroundColor(Color.red)
                                }
                                Text("Marktwert")
                                    .font(.caption)
                            }
                            
                            
                        }
                    }
                }
            }
            .padding(.top)
            HStack {
                HStack {
                    Image(systemName: "chevron.right")
                    Text("8m")
                        .font(.caption)
                        .foregroundColor(Color.red)
                }
                Spacer()
                TextField("Angebot an Kickbase", text: $offer).keyboardType(.decimalPad)
                Spacer()
                Image(systemName: "chevron.right")
            }
            .padding(.all)
        }
    }
}

struct TransferView: View {
    let players: [Player] = [
        Player(image: "person.fill", name: "Lewandowski", fullname: "Robert Lewandowski", team: "FC Bayern München", teamNumber: 9, teamPosition: "ang", marketValue: 60000000, marketTrend: "up", pointsAll: 5567, pointsAverage: 192, fitnessStatus: "fit", s11: 29,occurencies: 29, yellowCards: 2, goals: 32, assists: 1),
        Player(image: "person.fill", name: "Reus", fullname: "Marco Reus", team: "Borussia Dortmund", teamNumber: 11, teamPosition: "mf", marketValue: 53472973, marketTrend: "up", pointsAll: 3702, pointsAverage: 148, fitnessStatus: "fit", s11: 25, occurencies: 25, yellowCards: 2, goals: 9, assists: 10)
    ]
    
    var body: some View {
        List(players) { player in
            PlayerRow(player: player)
        }
    }
}

struct TransferView_Previews: PreviewProvider {
    static var previews: some View {
        TransferView()
    }
}
