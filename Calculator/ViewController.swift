//
//  ViewController.swift
//  Calculator
//
//  Created by Yernur Adilbek on 10/14/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var textField2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func add(_ sender: Any) {
        let a = textField.text!
        let b = textField2.text!
        
        
        guard let numberA = Int(a), let numberB = Int(b) else {
            label.text = "Please enter 2 input"
            
            return
        }
        
        let sum = numberA + numberB
        label.text = String(sum)
        
    }
    
    @IBAction func substract(_ sender: Any) {
        let a = textField.text!
        let b = textField2.text!
        
        
        guard let numberA = Int(a), let numberB = Int(b) else {
            label.text = "Please enter 2 input"
            
            return
        }
        
        let sum = numberA - numberB
        label.text = String(sum)
    }
    
    @IBAction func multiply(_ sender: Any) {
        let a = textField.text!
        let b = textField2.text!
        
        
        guard let numberA = Int(a), let numberB = Int(b) else {
            label.text = "Please enter 2 input"
            
            return
        }
        
        let sum = numberA * numberB
        label.text = String(sum)
    }
    
    @IBAction func divide(_ sender: Any) {
        let a = textField.text!
        let b = textField2.text!
        
        
        guard let numberA = Double(a), let numberB = Double(b) else {
            label.text = "Please enter 2 input"
            
            return
        }
        
        if numberB == 0 {
            label.text = "Can't divide by zero"
            
            return
        }
        
        let sum = numberA / numberB
        label.text = String(sum)
    }
}

