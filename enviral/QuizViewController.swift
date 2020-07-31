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
    var tempOceanQuiz = Quiz()
    var tempWasteQuiz = Quiz()
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
    
    @IBAction func oceanQuiz(_ sender: UIButton) {
        print("Ocean")
        quiz = Quiz()
        quiz.quizTitle = "Ocean Quiz"
        question1 = QuizQuestion(question: "How many sea creatures die per year due to plastic exposure?", wrongAns1: "10 thousand", wrongAns2: "5 million", wrongAns3: "700", rightAns: "1 million", comment: "")
        question2 = QuizQuestion(question: "How many species have become extinct due to disappearing habitats, ecosystems, and acidic oceans?", wrongAns1: "More than 3 million", wrongAns2: "100 thousand", wrongAns3: "34 thousand", rightAns: "More than 1 million", comment: "The disappearance of these habitats is mostly caused from global warming.")
        question3 = QuizQuestion(question: "Since 1870, how many inches have global sea levels risen?", wrongAns1: "12 inches", wrongAns2: "4 inches", wrongAns3: "10 inches", rightAns: "8 inches", comment: "This is more than the previous 2000 years combined")
        question4 = QuizQuestion(question: "How many people live within 3 feet of sea level?", wrongAns1: "10 million", wrongAns2: "1 billion", wrongAns3: "1 million", rightAns: "100 million", comment: "Many cities of the world are located near vulnerable coastal areas and the rising sea levels due to global warming could threaten their lives")
        question5 = QuizQuestion(question: "Up to how many tons of sunscreen wash off of swimmers in the oceans per year?", wrongAns1: "11,000", wrongAns2: "6,000", wrongAns3: "1,000", rightAns: "14,000", comment: "")
        question6 = QuizQuestion(question: "What percentage of turtles have eaten plastic?", wrongAns1: "13%", wrongAns2: "41%", wrongAns3: "96%", rightAns: "52%", comment: "That's more than half of the turtles!")
        quiz.questionsArray.append(contentsOf: [question1, question2, question3, question4, question5, question6])
        
        performSegue(withIdentifier: "goToQuestion", sender: nil)
    }
    
    @IBAction func wasteQuiz(_ sender: UIButton) {
        print("Waste")
        quiz = Quiz()
        quiz.quizTitle = "Waste Quiz"
        question1 = QuizQuestion(question: "About how long does it take a Styrofoam cup to decompose?", wrongAns1: "10 years", wrongAns2: "2 months", wrongAns3: "150 years", rightAns: "400 years", comment: "")
        question2 = QuizQuestion(question: "About how long does it take an orange peel to decompose?", wrongAns1: "5 weeks", wrongAns2: "2 months", wrongAns3: "1 year", rightAns: "6 months", comment: "")
        question3 = QuizQuestion(question: "What is the most common type of trash thrown away by Americans?", wrongAns1: "Metals", wrongAns2: "Plastics", wrongAns3: "Glass", rightAns: "Paper products", comment: "Paper products and cardboard account for about 39% of all trash")
        question4 = QuizQuestion(question: "What country consumes the most energy in the world?", wrongAns1: "Russia", wrongAns2: "China", wrongAns3: "Canada", rightAns: "United States", comment: "the US uses 5% more energy than China, the second-largest energy consumer")
        question5 = QuizQuestion(question: "How much of the world's water is available for human use?", wrongAns1: "97%", wrongAns2: "23%", wrongAns3: "3%", rightAns: ">1%", comment: "Only about one-third of 1% of all water on Earth is available for human use.")
        question6 = QuizQuestion(question: "What is the most common type of debris that litters our oceans?", wrongAns1: "Plastic Beverage bottles", wrongAns2: "Bags", wrongAns3: "Food Packaging", rightAns: "Cigarettes", comment: "Volunteers for the International Coastal Cleanup removed nearly two million cigarettes and cigarette filters in their most recent effort to clear litter from the world's oceans.")
       
        quiz.questionsArray.append(contentsOf: [question1, question2, question3, question4, question5, question6])
        performSegue(withIdentifier: "goToQuestion", sender: nil)
    }
    
   
    
    @IBAction func rainforestQuiz(_ sender: UIButton) {
        print("Rainforest")
        quiz = Quiz()
        quiz.quizTitle = "Rainforest Quiz"
        question1 = QuizQuestion(question: "Rainforests that fix carbon dioxide from the atmosphere (an efficient climate solution) are known as what?", wrongAns1: "Carbon floor", wrongAns2: "Carbon basin", wrongAns3: "Carbon bucket", rightAns: "Carbon sink", comment: "")
        question2 = QuizQuestion(question: "How many species of life forms are killed per day due to climate change and deforestation?", wrongAns1: "502,000", wrongAns2: "900,000", wrongAns3: "200,000", rightAns: "21,300,000", comment: "")
        question3 = QuizQuestion(question: "How many trees are cut down everyday to supply toilet paper?", wrongAns1: "50,000", wrongAns2: "17,000", wrongAns3: "9,000", rightAns: "27,000", comment: "")
        question4 = QuizQuestion(question: "How many people rely on tropical rainforests for survival?", wrongAns1: "500 million", wrongAns2: "29 million", wrongAns3: "50,000", rightAns: "1.2 billion", comment: "")
        question5 = QuizQuestion(question: "How many species of life forms are killed per day due to climate change and deforestation?", wrongAns1: "98", wrongAns2: "78", wrongAns3: "12", rightAns: "137", comment: "")
        question6 = QuizQuestion(question: "From 2018-2019, what was the percentage increase of rainforest fires?", wrongAns1: "23%", wrongAns2: "52%", wrongAns3: "17%", rightAns: "84%", comment: "")
        
        quiz.questionsArray.append(contentsOf: [question1, question2, question3, question4, question5, question6])
        performSegue(withIdentifier: "goToQuestion", sender: nil)
    }
    


}
