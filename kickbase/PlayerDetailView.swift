//
//  PlayerDetailView.swift
//  kickbase
//
//  Created by Dominik Rubröder on 17.04.22.
//

import SwiftUI

struct PlayerDetailView: View {
    let player: Player
    
    var body: some View {
        VStack {
            VStack {
                VStack {
                    Text(player.name)
                        .font(.title)
                    .fontWeight(.bold)
                    HStack {
                        Text("\(player.teamNumber)")
                            .font(.caption)
                        Text(player.teamPosition)
                            .font(.caption)
                            .textCase(.uppercase)
                    }
                }
                Spacer()
                Image(systemName: player.image)
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200)
            }
            .frame(height: 300.0, alignment: .center)
            
            HStack(alignment: .center) {
                VStack {
                    Text("\(player.pointsAverage)")
                    Text("ø Punkte")
                        .font(.caption)
                }
                
                Spacer()
                
                VStack {
                    Text("\(player.occurencies)")
                    Text("Einsätze")
                        .font(.caption)
                }
                
                Spacer()
                
                VStack {
                    Text("\(player.s11)")
                    Text("Start 11")
                        .font(.caption)
                }
                
                Spacer()
                
                VStack {
                    Text("\(player.yellowCards)")
                    Text("Gelbe Karten")
                        .font(.caption)
                }
                
                Spacer()
                
                VStack {
                    Text("\(player.goals)")
                    Text("Goals")
                        .font(.caption)
                }
                
                VStack {
                    Text("\(player.assists)")
                    Text("Assists")
                        .font(.caption)
                }
            }
            .padding(.all)
            
            VStack {
                Text("\(player.pointsAll)")
                Text("Punkte")
                    .font(.caption)
            }
            .padding(.vertical)
            
            VStack {
                HStack {
                    Text("\(player.marketValue)")
                    if player.marketTrend == "up" {
                        Image(systemName: "chevron.up")
                            .foregroundColor(Color.green)
                    } else {
                        Image(systemName: "chevron.down")
                            .foregroundColor(Color.red)
                    }
                }
                Text("Marktwert")
                    .font(.caption)
            }
            .padding(.vertical)
            
            VStack {
                if player.fitnessStatus == "fit" {
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundColor(Color.green)
                } else {
                    Image(systemName: "questionmark.circle.fill")
                }
                Text("\(player.fitnessStatus)")
                    .font(.caption)
                    .textCase(.uppercase)
            }
            .padding(.vertical)
        }
    }
}

struct PlayerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerDetailView(player: players[0])
    }
}
