//
//  ViewController.swift
//  Calculator
//
//  Created by user272075 on 3/9/25.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var firstNumber: UITextField!
    
    @IBOutlet weak var secondNumber: UITextField!
    
    @IBOutlet weak var answer: UILabel!
    
    @IBAction func add(_ sender: Any) {
        if let numOne = Double(firstNumber.text!), let numTwo = Double(secondNumber.text!) {
            
            let solution = numOne + numTwo;
            
            answer.text = String(format: "Answer: %.2f", solution)
        } else {
            answer.text = "Answer: INVALID"
        }
        answer.sizeToFit()
    }
    
    @IBAction func sub(_ sender: Any) {
        if let numOne = Double(firstNumber.text!), let numTwo = Double(secondNumber.text!) {
            
            let solution = numOne - numTwo;
            
            answer.text = String(format: "Answer: %.2f", solution)
        } else {
            answer.text = "INVALID"
        }
        answer.sizeToFit()
    }
    
    @IBAction func multi(_ sender: Any) {
        if let numOne = Double(firstNumber.text!), let numTwo = Double(secondNumber.text!) {
            
            let solution = numOne * numTwo;
            
            answer.text = String(format: "Answer: %.2f", solution)
        } else {
            answer.text = "Answer: INVALID"
        }
        answer.sizeToFit()
    }
    
    @IBAction func divide(_ sender: Any) {
        if let numOne = Double(firstNumber.text!), let numTwo = Double(secondNumber.text!) {
            
            if numTwo != 0 {
                let solution = numOne / numTwo
                
                answer.text = String(format: "Answer: %.2f", solution)
            } else {
                answer.text = "Answer: Cannot divide by zero"
            }
        } else {
            answer.text = "Answer: INVALID"
        }
        answer.sizeToFit()
    }
    
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
        }
        
    }

