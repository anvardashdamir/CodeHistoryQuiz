//
//  ChoiceTextView.swift
//  Code History
//
//  Created by Enver Dashdamirov on 21.05.23.
//

import SwiftUI

struct ChoiceTextView: View {
    
    let choiceText: String
    let radius: CGFloat
    
    var body: some View {
        Text(choiceText)
            .font(.system(size:20))
            .bold()
            .multilineTextAlignment(.center)
            .padding()
            .frame(maxWidth: .infinity)
            .overlay(
                RoundedRectangle(cornerRadius: self.radius)
                    .stroke(GameColor.accent, lineWidth: 2.5)
            )
    }
}







struct ChoiceTextView_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceTextView(choiceText: "variants", radius: 10)
    }
}
