//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
     let quiz = [
     ["Four + Two is Equal to Six.", "True"],
     ["Five + Three is Greater then One.","True"],
     ["Three + Eight is less then Ten", "False"]
     ]
    var questionNumber = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }

    @IBAction func answerButtonPress(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        let actualAnswer = quiz[questionNumber][1]
        if userAnswer == actualAnswer {
            print("True")
        }
        else{
            print("False")
        }
        if questionNumber < quiz.endIndex {
            questionNumber  = questionNumber+1
            updateUI()
        }
        
    }
    func updateUI(){
        questionLabel.text = quiz[questionNumber][0]
    }
    
}

