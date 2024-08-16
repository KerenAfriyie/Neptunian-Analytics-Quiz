//
//  ScoreView.swift
//  Neptunian Analytics Quiz
//
//  Created by Keren Afriyie on 13/08/2024.
//

import SwiftUI

struct ScoreView: View {
    
    @ObservedObject var viewModel: GameViewModel
    
    var body: some View {
        NavigationStack{
            ZStack {
                GameColour.main.ignoresSafeArea()
                VStack{VStack(alignment: .center, spacing: 0){
                    HomeButtonView()
                    Text("Final Score")
                        .bold()
                        .multilineTextAlignment(.leading)
                        .padding()
                    Text("\(viewModel.correctPercent, specifier: "%.2f")%")
                        .font(.largeTitle)
                        .bold()
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        .padding()
//                    Spacer()
                }.padding(.bottom, 20)
                    VStack{VStack(alignment: .leading, spacing: 0){
                        HStack {
                            Text("\(viewModel.correctNumber)")
                                .font(.largeTitle)
                            Image(systemName: "checkmark")
                                .foregroundColor(.green)
                                .font(.largeTitle)
                                .bold()
                        }
                        HStack {
                            Text("\(viewModel.incorrectNumber)")
                                .font(.largeTitle)
                            Image(systemName: "xmark.circle")
                                .foregroundColor(.red)
                                .font(.largeTitle)
                                .bold()
                        }
                        .foregroundColor(.black)
                        .navigationBarHidden(true)
                    }
                        Spacer()
                        NavigationLink(
                            destination: GameView(),
                            label: {
                                BottomTextView(str: "Retake quiz")
                                    .foregroundColor(.black)
                            })
                        NavigationLink(
                            destination: ReviewAnswersView(viewModel: viewModel),
                            label: {
                                HStack {
                                    Spacer()
                                    Text("Review Answers")
                                        .font(.body)
                                        .bold()
                                        .padding()
                                    Spacer()
                                }.background(Color.white)
                                    .padding()
                                    .foregroundColor(.black)
                            })
                    }
                }
            }
        }
    }
}
struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        // Initialize GameViewModel with sample data
        let viewModel = GameViewModel()
        // You may want to configure the viewModel with test data if needed
        ScoreView(viewModel: viewModel)
    }}
