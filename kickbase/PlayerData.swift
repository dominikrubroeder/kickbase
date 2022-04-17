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

let players: [Player] = [
    Player(image: "person.fill", name: "Lewandowski", fullname: "Robert Lewandowski", team: "FC Bayern München", teamNumber: 9, teamPosition: "ang", marketValue: 60000000, marketTrend: "up", pointsAll: 5567, pointsAverage: 192, fitnessStatus: "fit", s11: 29,occurencies: 29, yellowCards: 2, goals: 32, assists: 1),
    Player(image: "person.fill", name: "Reus", fullname: "Marco Reus", team: "Borussia Dortmund", teamNumber: 11, teamPosition: "mf", marketValue: 53472973, marketTrend: "up", pointsAll: 3702, pointsAverage: 148, fitnessStatus: "fit", s11: 25, occurencies: 25, yellowCards: 2, goals: 9, assists: 10)
]
