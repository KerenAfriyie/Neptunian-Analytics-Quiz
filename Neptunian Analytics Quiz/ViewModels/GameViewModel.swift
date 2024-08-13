//
//  GameViewModel.swift
//  Neptunian Analytics Quiz
//
//  Created by Keren Afriyie on 12/08/2024.
//

import SwiftUI

// 1
class GameViewModel: ObservableObject {

  // MARK: - Published properties
  // 2
  @Published private var game = Game()

  // MARK: - Internal properties
  // 3
  var currentQuestion: Question {
     game.currentQuestion
  }
  // 4
  var questionProgressText: String {
    "\(game.currentQuestionIndex + 1) / \(game.numberOfQuestions)"
  }
// 1
    var guessWasMade: Bool {
        if let _ = game.guesses[currentQuestion] {
            return true
        } else {
            return false
        }
    }
    
    var gameIsOver:Bool{
        game.isOver
    }
    
    var correctNumber: Int {
        game.correctNumber
    }
    
    var incorrectNumber: Int {
        game.incorrectNumber
    }
    
    var correctPercent: Double {
        game.correctPercentage
    }

    
    // MARK: - Internal Methods
    // 2
    func makeGuess(atIndex index: Int) {
        game.makeGuessForCurrentQuestion(atIndex: index)
    }
    // 3
    func displayNextScreen() {
        game.updateGameStatus()
    }
    
    func colour(forOptionIndex optionIndex: Int) -> Color {
           if let guessedIndex = game.guesses[currentQuestion] {
               if guessedIndex != optionIndex {
                   return GameColour.main
               } else if guessedIndex == currentQuestion.correctAnswerIndex {
                   return GameColour.correctGuess
               } else {
                   return GameColour.incorrectGuess
               }
           } else {
               return GameColour.main
           }
       }

}
