//
//  ViewController2.swift
//  TrueFalseStarter
//
//  Created by James Cobb on 1/7/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import UIKit
import GameKit

class ViewController2: UIViewController {
    
    var questionsAsked = 0
    var correctQuestions = 0
    var indexOfSelectedQuestion: Int = 0
    var gameSound: SystemSoundID = 0
    var alreadyAskedQuestions: [Int] = []
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerStatus: UILabel!
    @IBOutlet weak var answer1Button: UIButton!
    @IBOutlet weak var answer2Button: UIButton!
    @IBOutlet weak var answer3Button: UIButton!
    @IBOutlet weak var answer4Button: UIButton!
    @IBOutlet weak var nextQuestionButton: UIButton!
    @IBOutlet weak var scoreKeeperLabel: UILabel!
    @IBOutlet weak var scoreKeeper: UILabel!
    @IBOutlet weak var scroll: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scroll.contentSize.height = 1000
        scroll.contentSize.width = 0
        displayQuestion()
        nextQuestionButton.isHidden = true
        answerStatus.isHidden = true
        scoreKeeper.text = correctQuestions.description
        loadGameStartSound()
        playGameStartSound()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func displayQuestion() {
        indexOfSelectedQuestion = GKRandomSource.sharedRandom().nextInt(upperBound: questionsToBeAsked.count)
        
        while alreadyAskedQuestions.contains(indexOfSelectedQuestion) {
            indexOfSelectedQuestion = GKRandomSource.sharedRandom().nextInt(upperBound: questionsToBeAsked.count)
        }
        alreadyAskedQuestions.append(indexOfSelectedQuestion)
        let selectedQuestion = questionsToBeAsked[indexOfSelectedQuestion]
        questionLabel.text = selectedQuestion.question
        
        answer1Button.setTitle(selectedQuestion.answer1, for: UIControlState.normal)
        answer2Button.setTitle(selectedQuestion.answer2, for: UIControlState.normal)
        answer3Button.setTitle(selectedQuestion.answer3, for: UIControlState.normal)
        answer4Button.setTitle(selectedQuestion.answer4, for: UIControlState.normal)
    }
    
    @IBAction func answer1ButtonPressed(_ sender: UIButton) {
        answer1Button.isSelected = true
        disableButtons()
        nextQuestionButton.isHidden = false
        answerStatus.isHidden = false
        questionsAsked += 1
        let selectedAnswer = questionsToBeAsked[indexOfSelectedQuestion]
        let correctAnswer = selectedAnswer.answer
        if correctAnswer == answer1Button.currentTitle {
            answerStatus.text = "Correct!"
            correctQuestions += 1
        } else {
            answerStatus.text = "Sorry, that's not it."
            print("1")
        }
    }
    
    @IBAction func answer2ButtonPressed(_ sender: UIButton) {
        answer2Button.isSelected = true
        disableButtons()
        nextQuestionButton.isHidden = false
        answerStatus.isHidden = false
        questionsAsked += 1
        let selectedAnswer = questionsToBeAsked[indexOfSelectedQuestion]
        let correctAnswer = selectedAnswer.answer
        if correctAnswer == answer2Button.currentTitle {
            answerStatus.text = "Correct!"
            correctQuestions += 1
        } else {
            answerStatus.text = "Sorry, that's not it."
        }
    }
    
    @IBAction func answer3ButtonPressed(_ sender: UIButton) {
        answer3Button.isSelected = true
        disableButtons()
        nextQuestionButton.isHidden = false
        answerStatus.isHidden = false
        questionsAsked += 1
        let selectedAnswer = questionsToBeAsked[indexOfSelectedQuestion]
        let correctAnswer = selectedAnswer.answer
        if correctAnswer == answer3Button.currentTitle {
            answerStatus.text = "Correct!"
            correctQuestions += 1
        } else {
            answerStatus.text = "Sorry, that's not it."
        }
    }
    
    @IBAction func answer4ButtonPressed(_ sender: UIButton) {
        answer4Button.isSelected = true
        enableButtons()
        nextQuestionButton.isHidden = false
        answerStatus.isHidden = false
        questionsAsked += 1
        let selectedAnswer = questionsToBeAsked[indexOfSelectedQuestion]
        let correctAnswer = selectedAnswer.answer
        if correctAnswer == answer4Button.currentTitle {
            answerStatus.text = "Correct!"
            correctQuestions += 1
        } else {
            answerStatus.text = "Sorry, that's not it."
        }
    }
    
    @IBAction func nextQuestionButtonPressed(_ sender: UIButton) {
        gameRound()
        displayQuestion()
        enableButtons()
        answer1Button.isSelected = false
        answer2Button.isSelected = false
        answer3Button.isSelected = false
        answer4Button.isSelected = false
        nextQuestionButton.isHidden = true
        answerStatus.isHidden = true
        scoreKeeper.text = correctQuestions.description
    }
    
    func disableButtons() {
        switch answer1Button.isSelected {
        case answer1Button.isSelected:
            answer2Button.isUserInteractionEnabled = false
            answer3Button.isUserInteractionEnabled = false
            answer4Button.isUserInteractionEnabled = false
        case answer2Button.isSelected:
            answer1Button.isUserInteractionEnabled = false
            answer3Button.isUserInteractionEnabled = false
            answer4Button.isUserInteractionEnabled = false
        case answer3Button.isSelected:
            answer1Button.isUserInteractionEnabled = false
            answer2Button.isUserInteractionEnabled = false
            answer4Button.isUserInteractionEnabled = false
        case answer4Button.isSelected:
            answer1Button.isUserInteractionEnabled = false
            answer2Button.isUserInteractionEnabled = false
            answer3Button.isUserInteractionEnabled = false
        default:
            break
        }
    }
    
    func enableButtons() {
        answer1Button.isUserInteractionEnabled = true
        answer2Button.isUserInteractionEnabled = true
        answer3Button.isUserInteractionEnabled = true
        answer4Button.isUserInteractionEnabled = true
    }
    
    func gameRound() {
        if questionsAsked == 10 {
            let alert = UIAlertController(title: "Game Over!", message: "You scored \(correctQuestions * 10) percent answering Questions.", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Play Again", style: UIAlertActionStyle.default, handler: { action in
                self.correctQuestions = 0
                self.scoreKeeper.text = self.correctQuestions.description
                self.questionsAsked = 0
                self.alreadyAskedQuestions.removeAll()
                self.displayQuestion()
                self.enableButtons()
                self.loadGameStartSound()
                self.playGameStartSound()
            }))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    func loadGameStartSound() {
        let pathToSoundFile = Bundle.main.path(forResource: "GameSound", ofType: "wav")
        let soundURL = URL(fileURLWithPath: pathToSoundFile!)
        AudioServicesCreateSystemSoundID(soundURL as CFURL, &gameSound)
    }
    
    func playGameStartSound() {
        AudioServicesPlaySystemSound(gameSound)
    }
}
