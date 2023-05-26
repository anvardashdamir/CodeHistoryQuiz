//
//  ScoreViewModel.swift
//  Code History
//
//  Created by Enver Dashdamirov on 20.05.23.
//

import Foundation

struct ScoreViewModel {
    let correctGuess: Int
    let incorrectGuess: Int
    
    var percentage: Int {
        (correctGuess * 100 / (correctGuess + incorrectGuess ))
    }
}
