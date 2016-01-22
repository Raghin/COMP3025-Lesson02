//
//  ViewController.swift
//  Quiz
//
//  Created by student on 2016-01-15.
//  Copyright © 2016 Peter Smith. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Outlets
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    //Model
    let questions:[String] = ["What is Congnac made from?", "What is 7 + 7?", "What is the Capital of Canada"]
    let answers:[String] = ["Grapes", "14", "Ottawa"]
    var currentQuestionIndex: Int = 0
    
    override func viewDidLoad() {
        questionLabel.text = questions[currentQuestionIndex]
    }
    
    //Actions
    @IBAction func nextQuestionClicked(sender: AnyObject) {
        currentQuestionIndex++
        if currentQuestionIndex == questions.count{
            currentQuestionIndex = 0
        }
        
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
        
        
    }
    //hi
    @IBAction func showAnswerClicked(sender: AnyObject) {
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
    

}

