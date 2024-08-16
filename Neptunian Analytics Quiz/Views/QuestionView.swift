//
//  QuestionView.swift
//  Neptunian Analytics Quiz
//
//  Created by Keren Afriyie on 12/08/2024.
//

import SwiftUI

struct QuestionView: View {
  
    @EnvironmentObject var viewModel: GameViewModel
    let question: Question
  
  var body: some View {
    VStack {
      Text(question.questionText)
        .font(.largeTitle)
        .bold()
        .multilineTextAlignment(.leading)
      Spacer()
      VStack {
          ForEach(question.possibleAnswers.indices, id: \.self) { answerIndex in
          Button(action: {
            print("Tapped on option with the text: \(question.possibleAnswers[answerIndex])")
              viewModel.makeGuess(atIndex: answerIndex)
          }) {
            ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                  .background(viewModel.colour(forOptionIndex: answerIndex))
          }.disabled(viewModel.guessWasMade)
        }
      }
        if viewModel.guessWasMade{
            Button(action: {viewModel.displayNextScreen() }) {
                BottomTextView(str: "Next")
            }
        }
    }
    }
  }

//#Preview {
//    QuestionView(viewModel: viewModel, question: Game().currentQuestion)
//}
