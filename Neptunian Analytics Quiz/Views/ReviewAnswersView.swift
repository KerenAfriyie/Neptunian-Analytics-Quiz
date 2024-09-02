//
//  ReviewAnswers.swift
//  Neptunian Analytics Quiz
//
//  Created by Keren Afriyie on 13/08/2024.
//

import SwiftUI

struct ReviewAnswersView: View {
    @ObservedObject var viewModel: GameViewModel

    var body: some View {
        NavigationStack{
            ZStack {
                GameColour.main.ignoresSafeArea()
                VStack {
                    HomeButtonView()
                    if viewModel.summary.isEmpty {
                        Text("Game still in progress.")
                            .bold()
                            .multilineTextAlignment(.leading)
                            .padding()
                    } else {
                        List(viewModel.summary, id: \.questionIndex) { result in
                            let question = result.question
                            let answerSelectedIndex = result.answerSelectedIndex
                            let correctAnswerIndex = result.correctAnswerIndex
                            
                            VStack(alignment: .leading) {
                                Text("Question \(result.questionIndex + 1)")
                                    .font(.title2)
                                    .padding(.bottom, 5)
                                Text("\(question.questionText)")
                                    .font(.title3)
                                    .padding(.bottom, 5)
                                ForEach(question.possibleAnswers.indices, id: \.self) { answerIndex in
                                    let isSelected = answerIndex == answerSelectedIndex
                                    let isCorrect = answerIndex == correctAnswerIndex
                                    
                                    Text(question.possibleAnswers[answerIndex])
                                        .foregroundColor(isSelected
                                                         ? (isCorrect ? GameColour.correctGuess : GameColour.incorrectGuess)
                                                         : .primary
                                        )
                                        .bold(isSelected)
                                }
                                
                                Text("Correct Answer: \(question.possibleAnswers[correctAnswerIndex])")
                                    .padding(.top, 5)
                                    .bold()
                            }
                        }
                    }
                    NavigationLink(
                        destination: GameView(),
                        label: {
                            BottomTextView(str: "Retake Quiz")
                                .foregroundColor(.black)
                        })
                }
            }
        } .navigationBarBackButtonHidden(true)
    }
}

//#Preview {
//    ReviewAnswersView()
//}
//

struct ReviewAnswersView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = GameViewModel()
        ReviewAnswersView(viewModel: viewModel)
    }}
