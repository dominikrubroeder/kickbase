//
//  TransferView.swift
//  kickbase
//
//  Created by Dominik Rubröder on 17.04.22.
//

import SwiftUI

// A view that shows the data for one Player
struct PlayerRow: View {
    let player: Player
    @State private var offer: String = ""
    @State private var showDetails: Bool = false
    
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
            .onTapGesture {
                showDetails.toggle()
            }
            .sheet(isPresented: $showDetails) {
                PlayerDetailView(player: player)
            }
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
