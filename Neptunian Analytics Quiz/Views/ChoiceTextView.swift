//
//  ChoiceTextView.swift
//  Neptunian Analytics Quiz
//
//  Created by Keren Afriyie on 11/08/2024.
//

import SwiftUI

struct ChoiceTextView: View {
    let choiceText: String

    var body: some View {
        Text(choiceText)
          .font(.body)
          .bold()
          .multilineTextAlignment(.center)
          .padding()
          .border(GameColour.accent, width: 4)
    }
}

struct ChoiceTextView_Previews: PreviewProvider{
    static var previews: some View {
        ChoiceTextView(choiceText: "Choice Text!")
    }
}
