//
//  BottomTextView.swift
//  Neptunian Analytics Quiz
//
//  Created by Keren Afriyie on 12/08/2024.
//

import SwiftUI

struct BottomTextView: View {
    let str: String
    
    var body: some View {
        HStack {
            Spacer()
            Text(str)
                .font(.body)
                .bold()
                .padding()
            Spacer()
        }.background(GameColour.accent)
            .padding()
    }
}

#Preview {
    BottomTextView(str: "Test")
}
