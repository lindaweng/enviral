//
//  QuizViewController.swift
//  enviral
//
//  Created by Quinn Farr on 29.07.20.
//  Copyright © 2020 Linda Weng. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {

    var question1 = QuizQuestion()
    var question2 = QuizQuestion()
    var question3 = QuizQuestion()
    var question4 = QuizQuestion()
    var question5 = QuizQuestion()
    var question6 = QuizQuestion()
    var quiz = Quiz()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func oceanQuiz(_ sender: UIButton) {
        quiz.quizTitle = "Ocean Quiz"
        question1 = QuizQuestion(question: "How many sea creatures die per year due to plastic exposure?", wrongAns1: "10 thousand", wrongAns2: "5 million", wrongAns3: "700", rightAns: "1 million", comment: "")
        question2 = QuizQuestion(question: "How many species have become extinct due to disappearing habitats, ecosystems, and acidic oceans?", wrongAns1: "More than 3 million", wrongAns2: "100 thousand", wrongAns3: "34 thousand", rightAns: "More than 1 million", comment: "The disappearance of these habitats is mostly caused from global warming.")
        question3 = QuizQuestion(question: "Since 1870, how many inches have global sea levels risen?", wrongAns1: "12 inches", wrongAns2: "4 inches", wrongAns3: "10 inches", rightAns: "8 inches", comment: "This is more than the previous 2000 years combined")
        question4 = QuizQuestion(question: "How many people live within 3 feet of sea level?", wrongAns1: "10 million", wrongAns2: "1 billion", wrongAns3: "1 million", rightAns: "100 million", comment: "Many cities of the world are located near vulnerable coastal areas and the rising sea levels due to global warming could threaten their lives")
        question5 = QuizQuestion(question: "Up to how many tons of sunscreen wash off of swimmers in the oceans per year?", wrongAns1: "11,000", wrongAns2: "6,000", wrongAns3: "1,000", rightAns: "14,000", comment: "")
        question6 = QuizQuestion(question: "What percentage of turtles have eaten plastic?", wrongAns1: "", wrongAns2: "", wrongAns3: "", rightAns: "", comment: "")
        quiz.questionsArray.append(contentsOf: [question1, question2, question3, question4, question5, question6])
    }
    
    @IBAction func greenQuiz(_ sender: UIButton) {
    }
    
    @IBAction func pollutionQuiz(_ sender: UIButton) {
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if let questionVC = segue.destination as? QuizQuestionViewController {
            questionVC.selectedQuiz = quiz
            questionVC.questionNum = 0
        }
    }

}
