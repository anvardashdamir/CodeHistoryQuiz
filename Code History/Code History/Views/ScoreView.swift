//
//  ScoreView.swift
//  Code History
//
//  Created by Enver Dashdamirov on 21.05.23.
//

import SwiftUI

struct ScoreView: View {
    
    let viewModel: ScoreViewModel
    
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack {
                Spacer()
                Text("FINAL SCORE")
                    .font(.system(size: 40))
                    .bold()
                Text("\(viewModel.percentage)")
                    .font(.system(size: 50))
                    .bold()
                    .padding(40)
//                Spacer()
                VStack {
                    Text("Correct answers: \(viewModel.correctGuess)")
                    Text("Incorrect answers: \(viewModel.incorrectGuess)")
//                        .font(.system(size: 30))
                    Spacer()
                    NavigationLink(destination: GameView(), label: {
                        BottomTextView(str: "Start again!")
                    })
                }
            }
            
            .foregroundColor(.white)
        }
    }
}


struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(viewModel: ScoreViewModel(correctGuess: 8, incorrectGuess: 2))
    }
}

