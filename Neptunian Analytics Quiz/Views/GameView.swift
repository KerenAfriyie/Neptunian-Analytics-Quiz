//
//  ContentView.swift
//  Neptunian Analytics Quiz
//
//  Created by Keren Afriyie on 03/08/2024.
//

import SwiftUI

struct GameView: View {
    @StateObject var viewModel = GameViewModel()
    @State private var navigateToGameOver = false
    @State private var isGameOver = false


    var body: some View {
        NavigationStack {
            ZStack {
                GameColour.main.ignoresSafeArea()
                VStack {
                    Text(viewModel.questionProgressText)
                        .font(.callout)
                        .multilineTextAlignment(.leading)
                        .padding()
                    QuestionView(question: viewModel.currentQuestion)
                }
            }
            .foregroundColor(.black)
            .navigationBarHidden(true)
            .environmentObject(viewModel)
            .onChange(of: viewModel.gameIsOver) { oldValue, newValue in
                navigateToGameOver = newValue
            }
            .navigationDestination(isPresented: $navigateToGameOver) {
                ScoreView(viewModel: viewModel)
            }

        }
    }
}



#Preview {
    GameView()
}
