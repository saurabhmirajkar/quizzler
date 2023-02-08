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
    
    let quiz = [
        "Four + Two is equals to Six",
        "Five - Thress is greater than One",
        "Three + Eight is less than Ten"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionText.text = quiz[0]
    }

    @IBAction func answerButtonTapped(_ sender: UIButton) {
    }
    
}

