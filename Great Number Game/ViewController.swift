//
//  ViewController.swift
//  Great Number Game
//
//  Created by Aamer Essa on 09/11/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userInput: UITextField!
    var random = Int.random(in: 1...100)
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(random)
        
       
    }
    @IBAction func onClickSubmit(_ sender: Any) {
        
        let input = userInput.text
        let userInput = Int(input!) ?? 0
        let selectedNumber = random
        
        if userInput > selectedNumber {
            showWrongAlert(message: "\(userInput) is  High")
        } else if userInput < selectedNumber {
            showWrongAlert(message: "\(userInput) is  Low")
        } else if selectedNumber == userInput {
            
            showCorecrtAlert(number: userInput)
        }
        
    }
   
    func showCorecrtAlert(number:Int){
        let alert = UIAlertController(title: "Correct 👏🏻🎉🎉",message: "\(number) Was Correct!!!", preferredStyle: .alert)
            let dismissAction = UIAlertAction(title: "Play Again", style: .default, handler: nil)

            
        alert.view.subviews.first?.subviews.first?.subviews.first?.backgroundColor = UIColor(red: 0.00, green: 0.55, blue: 0.01, alpha: 0.92)

      
            alert.view.tintColor = UIColor.white

            alert.addAction(dismissAction)
            present(alert, animated: true, completion:  nil)
        random = Int.random(in: 1...100)
    }
    
    func showWrongAlert (message:String){
        let alert = UIAlertController(title: "Incorrect 😢",message:message, preferredStyle: .alert)
            let dismissAction = UIAlertAction(title: "Guess Again", style: .default, handler: nil)

        
        alert.view.subviews.first?.subviews.first?.subviews.first?.backgroundColor = UIColor(red: 0.72, green: 0.00, blue: 0.00, alpha: 0.89)

           
            alert.view.tintColor = UIColor.white

            alert.addAction(dismissAction)
            present(alert, animated: true, completion:  nil)
    }
    

}

