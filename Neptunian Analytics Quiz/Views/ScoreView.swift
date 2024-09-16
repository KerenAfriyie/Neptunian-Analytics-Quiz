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
                        .foregroundColor(.black)
                    Text("\(viewModel.correctPercent, specifier: "%.2f")%")
                        .font(.largeTitle)
                        .bold()
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        .padding()
                        .foregroundColor(.black)
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
                        }.foregroundColor(.black)
                        HStack {
                            Text("\(viewModel.incorrectNumber)")
                                .font(.largeTitle)
                            Image(systemName: "xmark.circle")
                                .foregroundColor(.red)
                                .font(.largeTitle)
                                .bold()
                        }
                        .foregroundColor(.black)
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
            }.navigationBarBackButtonHidden(true)
        }
    }
}
struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = GameViewModel()
        ScoreView(viewModel: viewModel)
    }}
