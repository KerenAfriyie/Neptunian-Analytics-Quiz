//
//  Question.swift
//  Neptunian Analytics Quiz
//
//  Created by Keren Afriyie on 11/08/2024.
//

import Foundation

struct Question: Hashable {
    
    let id = UUID()
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
            Question(questionText: "Which one of these languages is not a domain-specific language?",
                     possibleAnswers: [
                        "Python",
                        "R",
                        "SQL"
                     ],
                     correctAnswerIndex: 0),
            Question(questionText: "What does the programming concept 'DRY' stand for?",
                     possibleAnswers: [
                        "Do rebuild yourself",
                        "Don't repeat yourself",
                        "Dynamic resource yield"
                     ],
                     correctAnswerIndex: 1),
            Question(questionText: "What software can be use to resolve errors in code?",
                     possibleAnswers: [
                        "Debugger",
                        "Data type",
                        "Programming paradigm"
                     ],
                     correctAnswerIndex: 0),
            Question(questionText: "What term matches the definition 'A sequence of characters representing text'?",
                     possibleAnswers: [
                        "Function",
                        "Data structure",
                        "String"
                     ],
                     correctAnswerIndex: 2),
            
            ]
    }

