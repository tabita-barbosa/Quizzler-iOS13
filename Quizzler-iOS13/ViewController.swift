//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    let quiz = [
        [ "4 + 2 é igual a 6", "True"],
        [ "5 - 3 é maior que 1", "True"],
        [ "3 + 8 é menos que 10", "False"]
    ]
    // vai ser o tracker de qual pergunta o usuário esta
    var questionIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        // primeiro track na ação do usuário
        let userAnswer = sender.currentTitle
        
        let rightAnswer = quiz[questionIndex][1]
        
        if userAnswer == rightAnswer {
            print("resposta certa")
        } else {
            print("errou!")
        }
        
        if questionIndex + 1 < quiz.count {
            questionIndex += 1
        } else {
            questionIndex = 0
        }
        
        updateUI()
        
    }
    
    func updateUI(){
        questionLabel.text = quiz[questionIndex][0]
    }
}

