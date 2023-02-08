//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var scoreLabel: UILabel!
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func answerButtonTapped(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        sender.backgroundColor = quizBrain.checkAnswer(userAnswer) ? UIColor.green : UIColor.red
        
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(withTimeInterval: 0.2, repeats: false) { (_) in
            self.updateUI()
        }
        
    }
    
    fileprivate func updateUI() {
        DispatchQueue.main.async {
            self.progressBar.progress = self.quizBrain.getProgress()
            self.questionText.text = self.quizBrain.getQuestionText()
            self.trueButton.backgroundColor = UIColor.clear
            self.falseButton.backgroundColor = UIColor.clear
            self.scoreLabel.text = "Score: \(self.quizBrain.getScore())"
        }
    }
    
}

