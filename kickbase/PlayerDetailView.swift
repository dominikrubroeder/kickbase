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
        Text(player.name)
    }
}

struct PlayerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerDetailView(player: players[0])
    }
}
