//
//  ViewController.swift
//  Quiz App
//
//  Created by Donna on 2022/05/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quizs = [
        "Four + Two is equal to Six",
        "Five - Three is greater than One",
        "Three + Eight is less than Ten"]
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        questionNumber += 1
        updateUI()
    }
    func updateUI(){
        questionLabel.text = quizs[questionNumber]
    }
    
}

