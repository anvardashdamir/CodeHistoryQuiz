//
//  ContentView.swift
//  Code History
//
//  Created by Enver Dashdamirov on 20.05.23.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                VStack(alignment: .leading, spacing: 0) {
                    Text("Welcome to the Code History Quiz!")
                        .font(.largeTitle)
                        .bold()
                        .multilineTextAlignment(.leading)
                        .padding()
                }
                .foregroundColor(Color.blue)
                VStack() {
                    Spacer()
                    NavigationLink(destination: GameView(), label: {BottomTextView(str: "Let's Start!")})
                }
                .foregroundColor(.white)
                }
            }
        }
    }


struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
