//
//  BottomTextView.swift
//  Code History
//
//  Created by Enver Dashdamirov on 20.05.23.
//

import Foundation
import SwiftUI

struct BottomTextView: View {
    let str: String
    
    var body: some View {
        HStack {
            Spacer()
            
            Text(str)
                .font(.body)
                .bold()
            
            Spacer()
        }
        .padding(.vertical)
        .background(GameColor.accent)
    }
}

struct BottomTextView_Preview: PreviewProvider {
    static var previews: some View {
        BottomTextView(str: "TEST")
    }
}
