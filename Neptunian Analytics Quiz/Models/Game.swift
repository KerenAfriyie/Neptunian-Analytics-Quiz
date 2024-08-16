//
//  Game.swift
//  Neptunian Analytics Quiz
//
//  Created by Keren Afriyie on 12/08/2024.
//

import Foundation

struct Game {
    private(set) var currentQuestionIndex = 0
    private(set) var guesses = [Question: Int]()
    private(set) var isOver = false
    private let questions = Question.allQuestions.shuffled()
    private(set) var correctPercentage = 0.0
    private(set) var summary: [QuestionSummary] = []
    
    var guessCount: (correct: Int, incorrect: Int) {
        var count: (correct: Int, incorrect: Int) = (0, 0)
        for (question, guessedIndex) in guesses {
            if question.correctAnswerIndex == guessedIndex {
                count.correct += 1
            } else {
                count.incorrect += 1
            }
        }
        return count
    }
    
    var numberOfQuestions: Int {
        return questions.count
    }
    
    var currentQuestion: Question {
        return questions[currentQuestionIndex]
    }
    
    var correctNumber: Int {
        return guessCount.correct
    }
    
    var incorrectNumber: Int {
        return guessCount.incorrect
    }
    
    mutating func makeGuessForCurrentQuestion(atIndex index: Int) {
        guesses[currentQuestion] = index
    }
    
    mutating func updateGameStatus() {
        if currentQuestionIndex < questions.count - 1 {
            currentQuestionIndex += 1
        } else {
            isOver = true
            correctPercent()
            collectResults()
        }
    }
    
    mutating func correctPercent() {
        let totalGuesses = guessCount.correct + guessCount.incorrect
        if totalGuesses > 0 {
            correctPercentage = Double(guessCount.correct) / Double(totalGuesses) * 100
        } else {
            correctPercentage = 0.0
        }
    }

    
//    mutating func collectResults() {
//        var results: [QuestionSummary] = []
//        
//        for (index, question) in questions.enumerated() {
//            // Check if the question was answered
//            if let selectedAnswerIndex = guesses[question] {
//                let result = QuestionSummary(
//                    questionIndex: index,
//                    answerSelectedIndex: selectedAnswerIndex,
//                    correctAnswerIndex: question.correctAnswerIndex
//                )
//                results.append(result)
//            }
//        }
//        summary = results
//    }
    
    mutating  func collectResults() {
        var results: [QuestionSummary] = []

        for (index, question) in questions.enumerated() {
            if let selectedAnswerIndex = guesses[question] {
                let result = QuestionSummary(
                    question: question,
                    questionIndex: index,
                    answerSelectedIndex: selectedAnswerIndex,
                    correctAnswerIndex: question.correctAnswerIndex
                )
                results.append(result)
            }
        }
        summary = results
    }

    
    
}
