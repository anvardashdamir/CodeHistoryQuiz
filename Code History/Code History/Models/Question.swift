//
//  Question.swift
//  Code History
//
//  Created by Enver Dashdamirov on 20.05.23.
//

import Foundation
import SwiftUI

struct Question: Hashable {
    let questionText:  String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
    
    static var allQuestions = [
        
        Question(questionText: "A series of instructions written to form a specific task on a computer.",
                 possibleAnswers: [
                    "Computer program",
                    "Programming",
                    "Programmer",
                    "Programming Language"
                 ],
                 correctAnswerIndex: 0),
        
        Question(questionText: "Which female was known as the 'World's First Programmer'?",
                 possibleAnswers: [
                    "Theresa May",
                    "Mother Theresa",
                    "Ada Augusta",
                    "Adeline Augusta"
                  ],
                 correctAnswerIndex: 2),
        
        Question(questionText: "What method was used to feed instructions into early computing machines?",
                 possibleAnswers: [
                    "Paper Tickets",
                    "Cables and Plugs",
                    "Vacuum Tubes",
                    "Punch Cards"
                  ],
                 correctAnswerIndex: 3),
        
        Question(questionText: "HTML stands for?",
                 possibleAnswers: [
                    "HyperTest Makeup Language",
                    "HyperText Markup Language",
                    "HappyText Message Language",
                    "HappyText Madeup Language"
                  ],
                 correctAnswerIndex: 1),
        
        Question(questionText: "What is coding?",
                 possibleAnswers: [
                    "Python",
                    "A hacking technique",
                    "Useless words behind my game",
                    "The way to tell a computer to do something"
                  ],
                 correctAnswerIndex: 3),
        
        Question(questionText: "When did Macintosh came out?",
                 possibleAnswers: [
                    "1986",
                    "1982",
                    "1984",
                    "1988"
                  ],
                 correctAnswerIndex: 2),
        
        Question(questionText: "Who was Alan Turing?",
                 possibleAnswers: [
                    "Musician",
                    "Footballer",
                    "Bird",
                    "Mathematician"
                  ],
                 correctAnswerIndex: 3),

        Question(questionText: "What is the computer's natural language?",
                 possibleAnswers: [
                    "Single",
                    "Multiple",
                    "Binary",
                    "Trinity"
                  ],
                 correctAnswerIndex: 2),
        
        Question(questionText: "FORTRAN created by ... ",
                 possibleAnswers: [
                    "IBM",
                    "Ford",
                    "Ebay",
                    "Microsoft"
                  ],
                 correctAnswerIndex: 0),
        
        Question(questionText: "The Fortran language was developed in 1957 by a team led by the following?",
                 possibleAnswers: [
                    "Black Sirius",
                    "John Backus",
                    "Dumbledore Albus",
                    "Snape Severus"
                  ],
                 correctAnswerIndex: 1)
    ]
}

