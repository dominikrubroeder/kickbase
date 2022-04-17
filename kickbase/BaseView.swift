//
//  BaseView.swift
//  kickbase
//
//  Created by Dominik Rubröder on 17.04.22.
//

import SwiftUI

struct PlayerActivityRow: View {
    let player: Player
    @State private var showDetails: Bool = false
    
    var body: some View {
        HStack {
            VStack {
                Spacer()
                
                Image(systemName: "\(player.image)")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50, alignment: .bottom)
            }
            
            VStack(alignment: .leading) {
                Text(player.name)
                    .font(.headline)
                    .fontWeight(.bold)
                    .textCase(.uppercase)
                Text("ist auf dem Transfermarkt")
                    .font(.caption)
            }
            
            Spacer()
            
            VStack {
                Text("vor 47min")
                    .font(.caption)
                Spacer()
            }
            .frame(height: 50, alignment: .leading)
        }
        .onTapGesture {
            showDetails.toggle()
        }
        .sheet(isPresented: $showDetails) {
            PlayerDetailView(player: player)
        }
    }
}

struct BaseView: View {
    var body: some View {
        List(players) { player in
            PlayerActivityRow(player: player)
        }
    }
}

struct BaseView_Previews: PreviewProvider {
    static var previews: some View {
        BaseView()
    }
}
