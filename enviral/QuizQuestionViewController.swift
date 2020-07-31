//
//  QuizQuestionViewController.swift
//  enviral
//
//  Created by Linda Weng on 7/30/20.
//  Copyright © 2020 Linda Weng. All rights reserved.
//

import UIKit

class QuizQuestionViewController: UIViewController {

    var selectedQuiz: Quiz?
    var questionNum: Int?
    
    @IBOutlet weak var quizTitle: UILabel!
    @IBOutlet weak var questionName: UILabel!
    @IBOutlet weak var answer1: UIButton!
    @IBOutlet weak var answer2: UIButton!
    @IBOutlet weak var answer3: UIButton!
    @IBOutlet weak var answer4: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    @IBOutlet weak var commentLabel: UILabel!
    
    
    var notSelect = UIColor(red: 115/255.0, green: 253/255.0, blue: 255/255.0, alpha: 1.0)
    var select = UIColor(red: 251/255.0, green: 118/255.0, blue: 122/255.0, alpha: 1.0)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let answers = [answer1, answer2, answer3, answer4]
        // random number generator
        let correctNum = Int.random(in: 0..<4)
        let correctAns = answers[correctNum]
        
        quizTitle.text = selectedQuiz?.quizTitle
        if let num = questionNum, let rightAns = correctAns {
            questionName.text = "Q\(num+1): " + (selectedQuiz?.questionsArray[num].question)!
            
            
            rightAns.setTitle(selectedQuiz?.questionsArray[num].rightAnswer, for: .normal)
//            print(rightAns.titleLabel)
                        
            if answer1.titleLabel!.text == nil {
                answer1.setTitle(selectedQuiz?.questionsArray[num].wrongAnswer1, for: .normal)
            }
            if answer2.titleLabel!.text == nil {
                answer2.setTitle(selectedQuiz?.questionsArray[num].wrongAnswer2, for: .normal)
            }
            if answer3.titleLabel!.text == nil {
                answer3.setTitle(selectedQuiz?.questionsArray[num].wrongAnswer3, for: .normal)
            }
            if answer4.titleLabel!.text == nil {
                if rightAns == answer1 {
                    answer4.setTitle(selectedQuiz?.questionsArray[num].wrongAnswer1, for: .normal)
                } else if rightAns == answer2 {
                    answer4.setTitle(selectedQuiz?.questionsArray[num].wrongAnswer2, for: .normal)
                } else if rightAns == answer3 {
                    answer4.setTitle(selectedQuiz?.questionsArray[num].wrongAnswer3, for: .normal)
                }
            }
            
//            answer1.setTitle(selectedQuiz?.questionsArray[num].wrongAnswer1, for: .normal)
//            answer2.setTitle(selectedQuiz?.questionsArray[num].wrongAnswer2, for: .normal)
//            answer3.setTitle(selectedQuiz?.questionsArray[num].wrongAnswer3, for: .normal)
//            answer4.setTitle(selectedQuiz?.questionsArray[num].rightAnswer, for: .normal)
        }
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if let questionVC = segue.destination as? QuizQuestionViewController {
            questionVC.selectedQuiz = selectedQuiz
            questionVC.questionNum = (questionNum! + 1)
        }
    }
    
    @IBAction func answer1Tapped(_ sender: Any) {
        if questionNum != 5 {
            nextButton.alpha = 1.0
        }
        answer1.backgroundColor = select
        answer2.backgroundColor = notSelect
        answer3.backgroundColor = notSelect
        answer4.backgroundColor = notSelect
        commentLabel.text = (selectedQuiz?.questionsArray[questionNum!].comment)! + "\nThe right answer is: " + (selectedQuiz?.questionsArray[questionNum!].rightAnswer)!
        
    }
    
    @IBAction func answer2Tapped(_ sender: Any) {
        if questionNum != 5 {
            nextButton.alpha = 1.0
        }
        answer1.backgroundColor = notSelect
        answer2.backgroundColor = select
        answer3.backgroundColor = notSelect
        answer4.backgroundColor = notSelect
        commentLabel.text = (selectedQuiz?.questionsArray[questionNum!].comment)! + "\nThe right answer is: " + (selectedQuiz?.questionsArray[questionNum!].rightAnswer)!
    }
    
    @IBAction func answer3Tapped(_ sender: Any) {
        if questionNum != 5 {
            nextButton.alpha = 1.0
        }
        answer1.backgroundColor = notSelect
        answer2.backgroundColor = notSelect
        answer3.backgroundColor = select
        answer4.backgroundColor = notSelect
        commentLabel.text = (selectedQuiz?.questionsArray[questionNum!].comment)! + "\nThe right answer is: " + (selectedQuiz?.questionsArray[questionNum!].rightAnswer)!
    }
    
    @IBAction func answer4Tapped(_ sender: Any) {
        if questionNum != 5 {
            nextButton.alpha = 1.0
        }
        answer1.backgroundColor = notSelect
        answer2.backgroundColor = notSelect
        answer3.backgroundColor = notSelect
        answer4.backgroundColor = select
        commentLabel.text = (selectedQuiz?.questionsArray[questionNum!].comment)! + "\nThe right answer is: " + (selectedQuiz?.questionsArray[questionNum!].rightAnswer)!
    }
    
    @IBAction func finishTapped(_ sender: Any) {
        self.view.window?.rootViewController?.dismiss(animated: true, completion: nil)
    }
    
}
