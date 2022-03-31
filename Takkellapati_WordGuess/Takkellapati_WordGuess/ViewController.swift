//
//  ViewController.swift
//  Takkellapati_WordGuess
//
//  Created by Takkellapati,Venkata Prabhakar on 3/31/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var wordsGuessedLabel: UILabel!
    @IBOutlet weak var wordsMissedLabel: UILabel!
    @IBOutlet weak var wordsRemainingLabel: UILabel!
    @IBOutlet weak var totalWordsLabel: UILabel!
    @IBOutlet weak var userGuessLabel: UILabel!
    @IBOutlet weak var guessLetterField: UITextField!
    @IBOutlet weak var hintLabel: UILabel!
    @IBOutlet weak var guessCountLabel: UILabel!
    @IBOutlet weak var guessLetterButtonPressed: UIButton!
    @IBOutlet weak var playAgainButtonPressed: UIButton!
    
    @IBOutlet weak var imageView: UIImageView!
    var words = [["SWIFT", "Language used to develop ios"],
                        ["BIDEN","Current President Of U.S.A"],
                        ["CRICKET", "A Sport Played By Sachin Tendulkar"],
                        ["MODI", "Current PrimeMinister Of INDIA"],
                        ["LION", "An Animal Lives in Forest"]]

           var images =  ["swift","biden","cricket","modi","lion","giveup"]
    let maxNumOfWrongGuesses = 10
    var guessesRemaining = 11
    var wordHint = ""
    var guessWord = ""
    var guessCount = 0
    var wordsGuessed = 0
    var wordsMissed = 0
    var guessedLetters = ""
    var indexOfWord = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        guessWord = words[indexOfWord][0]
        wordHint = words[indexOfWord][1]
        hintLabel.text = "HINT: " + wordHint
        totalWordsLabel.text = "Total number of words in game: \(words.count)"
        wordsRemainingLabel.text = "Total number of words remaining in game: \(words.count)"
        formatWordField()
        guessLetterButtonPressed.isEnabled = false
        playAgainButtonPressed.isHidden = true
    }
    func updateCount(){
        wordsMissedLabel.text = "Total number of words guessed wrongly: \(wordsMissed)"
        wordsGuessedLabel.text = "Total number of words guessed successfully: \(wordsGuessed)"
        wordsRemainingLabel.text = "Total number of words remaining in game: \(words.count - (wordsGuessed + wordsMissed))"
    }
    func updateInterfaceAfterGuess(){
        guessLetterField.resignFirstResponder()
        guessLetterField.text = ""
    }
    func formatWordField() {
        var revealedWord = ""
        guessedLetters += guessLetterField.text!
        
        for letter in guessWord {
            if guessedLetters.contains(letter) {
                revealedWord = revealedWord + " \(letter)"
            } else {
                revealedWord += " _"
            }
        }
        revealedWord.removeFirst()
        userGuessLabel.text = revealedWord
    }
    func letterGuessed() {
        formatWordField()
        guessCount += 1
        guessesRemaining = guessesRemaining - 1
        let currentLetterGuessed = guessLetterField.text!
//        if !guessWord.contains(currentLetterGuessed) {
//            guessesRemaining = guessesRemaining - 1
//        }
        let revealedWord = userGuessLabel.text!
        if guessesRemaining == 0 {
            playAgainButtonPressed.isHidden = false
            guessLetterField.isEnabled = false
            guessLetterButtonPressed.isEnabled = false
            guessCountLabel.text = "You have used all the available guesses, Please start again"
            wordsMissed += 1
            updateCount()
            updateImages()
        } else if !revealedWord.contains("_") {
            playAgainButtonPressed.isHidden = false
            guessLetterField.isEnabled = false
            guessLetterButtonPressed.isEnabled = false
            guessCountLabel.text = "You won! It took you \(guessCount) attempts to guess the word!"
            wordsGuessed += 1
            updateCount()
            updateImages()
        } else {
            let guess = ( guessCount == 1 ? "Guess" : "Guesses")
            guessCountLabel.text = "You have made \(guessCount) \(guess)"
        }
        if (wordsGuessed + wordsMissed) == words.count {
            guessCountLabel.text = "Congratulations, You are done, Please start over again ?"
            updateImages()
        }
    }
    @IBAction func guessLetterFieldChanged(_ sender: UITextField) {
        if let letterGuessed = guessLetterField.text?.last {
            guessLetterField.text = "\(letterGuessed)"
            guessLetterButtonPressed.isEnabled = true
        } else {
            
            guessLetterButtonPressed.isEnabled = false
        }
    }
    @IBAction func guessKeyPressed(_ sender: UITextField) {
        letterGuessed()
        updateInterfaceAfterGuess()
        let letter = guessLetterField.text
        if letter?.isEmpty == true{
            guessLetterButtonPressed.isEnabled = false
        }
        else{
            guessLetterButtonPressed.isEnabled = true
        }
    }
    @IBAction func guessLetterButtonPressed(_ sender: UIButton) {
        letterGuessed()
        updateInterfaceAfterGuess()
        let letter = guessLetterField.text
        if letter?.isEmpty == true{
            guessLetterButtonPressed.isEnabled = false
        }
        else{
            
            guessLetterButtonPressed.isEnabled = true
        }
    }
    @IBAction func playAgainButtonPressed(_ sender: UIButton) {
        imageView.isHidden = true
        indexOfWord += 1
        if indexOfWord == words.count {
            indexOfWord = 0
            wordsGuessed = 0
            wordsMissed = 0
            updateCount()
        }
        guessWord = words[indexOfWord][0]
        wordHint = words[indexOfWord][1]
        hintLabel.text = "HINT: " + wordHint
        playAgainButtonPressed.isHidden = true
        guessLetterField.isEnabled = true
        guessLetterButtonPressed.isEnabled = false
        guessesRemaining = maxNumOfWrongGuesses + 1
        guessedLetters = ""
        formatWordField()
        guessCountLabel.text = "You have Made Zero Guessess"
        guessCount = 0
    }
    func updateImages(){
        if(guessesRemaining == 0){
            imageView.isHidden = false
            imageView.image = UIImage(named: images[5])
            let originalImageFrame = imageView.frame
            let widthShrink: CGFloat = 10
            let heightShrink: CGFloat = 10
            let newFrame = CGRect(
            x: imageView.frame.origin.x + widthShrink,
            y: imageView.frame.origin.y + heightShrink,
            width: imageView.frame.width - widthShrink,
            height: imageView.frame.height - heightShrink)
            imageView.frame = newFrame
            UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10.0,  animations: {
                            self.imageView.frame = originalImageFrame
                        })
        }
        else{
            imageView.isHidden = false
            imageView.image = UIImage(named: images[indexOfWord])
            let originalImageFrame = imageView.frame
            let widthShrink: CGFloat = 10
            let heightShrink: CGFloat = 10
            let newFrame = CGRect(
            x: imageView.frame.origin.x + widthShrink,
            y: imageView.frame.origin.y + heightShrink,
            width: imageView.frame.width - widthShrink,
            height: imageView.frame.height - heightShrink)
            imageView.frame = newFrame
            UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10.0,  animations: {
                            self.imageView.frame = originalImageFrame
                        })
        }
}

}

