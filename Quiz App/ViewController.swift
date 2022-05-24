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
        ["Four + Two is equal to Six","True"],
        ["Five - Three is greater than One","True"],
        ["Three + Eight is less than Ten","False"],]
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        let actualAnswer = quizs[questionNumber][1]
        if userAnswer == actualAnswer {
            print("right")
        }else{
            print("wrong")
        }
        
        if quizs.count-1 > questionNumber{
            
            questionNumber += 1
        }else{
            questionNumber = 0
        }
        updateUI()
    }
    func updateUI(){
        questionLabel.text = quizs[questionNumber][0]
    }
    
}

