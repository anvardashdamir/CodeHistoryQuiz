//
//  QuestionView.swift
//  Code History
//
//  Created by Enver Dashdamirov on 21.05.23.
//

import SwiftUI

struct QuestionView: View {
    @EnvironmentObject var viewModel: GameViewModel
    let question: Question
    
    var body: some View {
        VStack {
            Text(question.questionText)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                .bold()
                .padding()
            Spacer()
            VStack {
                ForEach(0..<question.possibleAnswers.count, id: \.self) {answerIndex in
                    Button(action: {
                        print("Tapped on option with the text: \(question.possibleAnswers[answerIndex])")
                        viewModel.makeGuess(atIndex: answerIndex)
                    }) {
                        ChoiceTextView(
                            choiceText: question.possibleAnswers[answerIndex],
                            radius: self.viewModel.cornerRadiusForChoiceView
                        )
                        .background(
                            viewModel.color(forOptionIndex: answerIndex)
                                .cornerRadius(self.viewModel.cornerRadiusForChoiceView)
                        )
                    }
                    .padding()
                    .disabled(viewModel.guessWasMade)
                }
            }
            .padding()
            Spacer()
            if viewModel.guessWasMade {
                Button(action: { viewModel.displayNextScreen() }) {
                    BottomTextView(str: "next question")
                }
            }
        }
        .padding(.vertical)
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView(question: Game().currentQuestion)
            .environmentObject(GameViewModel())
    }
}
