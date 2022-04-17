//
//  PlayerData.swift
//  kickbase
//
//  Created by Dominik Rubröder on 17.04.22.
//

import Foundation

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
