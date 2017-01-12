//
//  Questions.swift
//  TrueFalseStarter
//
//  Created by James Cobb on 1/7/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import GameKit
import UIKit

class TriviaQuestions {
    
    let question: String
    let answer1: String
    let answer2: String
    let answer3: String
    let answer4: String
    let answer: String
    
    init(question: String, answer1: String, answer2: String, answer3: String, answer4: String, answer: String) {
        self.question = question
        self.answer1 = answer1
        self.answer2 = answer2
        self.answer3 = answer3
        self.answer4 = answer4
        self.answer = answer
    }
    
}
    
    let question1 = TriviaQuestions(question: "This was the only US President to serve more than two consecutive terms.", answer1: "George Washington", answer2: "Franklin D. Roosevelt", answer3: "Woodrow Wilson", answer4: "Andrew Jackson", answer: "Franklin D. Roosevelt")
   
    let question2 = TriviaQuestions(question:  "Which of the following countries has the most residents?", answer1: "Nigeria", answer2: "Russia", answer3: "Iran", answer4: "Vietnam", answer: "Nigeria")
    
    let question3 = TriviaQuestions(question: "In what year was the United Nations founded?", answer1: "1918", answer2: "1919", answer3: "1945", answer4: "1954", answer: "1945")

    let question4 = TriviaQuestions(question: "The Titanic departed from the United Kingdom, where was it supposed to arrive?", answer1: "Paris", answer2: "Washington D.C.", answer3: "New York City", answer4: "Boston", answer: "New York City")

    let question5 = TriviaQuestions(question: "Which nation produces the most oil?", answer1: "Iran", answer2: "Irag", answer3: "Brazil", answer4: "Canada", answer: "Canada")

    let question6 = TriviaQuestions(question:  "Which country has most recently won consecutive World Cups in Soccer?", answer1: "Italy", answer2: "Brazil", answer3: "Argentina", answer4: "Spain", answer: "Brazil")

    let question7 = TriviaQuestions(question:  "Which of the following rivers is longest?", answer1: "Yangtze", answer2: "Mississippi", answer3: "Congo", answer4: "Mekong", answer: "Mississippi")

    let question8 = TriviaQuestions(question:  "Which city is the oldest?", answer1: "Mexico City", answer2: "Cape Town", answer3: "San Juan", answer4: "Sydney", answer: "Mexico City")

    let question9 = TriviaQuestions(question:   "Which country was the first to allow women to vote in national elections?", answer1: "Poland", answer2: "United States", answer3: "Sweden", answer4: "Senegal", answer: "Poland")

    let question10 = TriviaQuestions(question: "Which of these countries won the most medals in the 2012 Summer Games?", answer1: "France", answer2: "Germany", answer3: "Japan", answer4: "Great Britain", answer: "Great Britain")

    let question11 = TriviaQuestions(question: "Which planet is closest to the Sun?", answer1: "Mercury", answer2: "Earth", answer3: "Mars", answer4: "Jupiter", answer: "Mercury")

    let question12 = TriviaQuestions(question: "What is the largest country in the World?", answer1: "United States", answer2: "Canada", answer3: "Russia", answer4: "China", answer: "Russia")

    let question13 = TriviaQuestions(question: "What is the largest Ocean in planet Earth?", answer1: "Atlantic Ocean", answer2: "Indian Ocean", answer3: "Artic Ocean", answer4: "Pacific Ocean", answer: "Pacific Ocean")

    let question14 = TriviaQuestions(question: "Which is the largest Religion?", answer1: "Islam", answer2: "Christianity", answer3: "Hinduism", answer4: "Buddhism", answer: "Christianity")

    let question15 = TriviaQuestions(question: "Which NBA Player has won the most Championships?", answer1: "Kobe Bryant", answer2: "Michael Jordan", answer3: "Bill Russell", answer4: "Lebron James", answer: "Bill Russell")

    let questionsToBeAsked = [question1, question2, question3, question4, question5, question6, question7, question8, question9, question10, question11, question12, question13, question14, question15]

