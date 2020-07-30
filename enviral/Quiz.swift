//
//  Quiz.swift
//  enviral
//
//  Created by Quinn Farr on 29.07.20.
//  Copyright © 2020 Linda Weng. All rights reserved.
//

import UIKit

class Quiz {
    var quizTitle = ""
    var questionsArray = [QuizQuestion]()
}
class QuizQuestion {
    var question = ""
    var wrongAnswer1 = ""
    var wrongAnswer2 = ""
    var wrongAnswer3 = ""
    var rightAnswer = ""
    var comment = ""
    
    init() {}
    
    init(question: String, wrongAns1: String, wrongAns2: String, wrongAns3: String, rightAns: String, comment: String) {
        self.question = question
        wrongAnswer1 = wrongAns1
        wrongAnswer2 = wrongAns2
        wrongAnswer3 = wrongAns3
        rightAnswer = rightAns
        self.comment = comment
    }
}
