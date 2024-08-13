//
//  Question.swift
//  Neptunian Analytics Quiz
//
//  Created by Keren Afriyie on 11/08/2024.
//

import Foundation

struct Question: Hashable {

    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
    
    static var allQuestions = [
            Question(questionText: "What term matches the definition 'A computer language used to write programs in a specific field",
                     possibleAnswers: [
                        "General-purpose programming language",
                        "High-level programming language",
                        "Domain-specific language"
                     ],
                     correctAnswerIndex: 2),
            Question(questionText: "Which one of these langauges is not a domain-specific language?",
                     possibleAnswers: [
                        "Python",
                        "R",
                        "SQL"
                     ],
                     correctAnswerIndex: 0)
        ]
    }

