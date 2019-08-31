//
//  ViewController.swift
//  Is It Prime
//
//  Created by Joshua Franklin on 8/30/19.
//  Copyright © 2019 AMSU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func isItPrime(_ sender: Any) {
        
        if let userEnteredString = numberTextField.text {
            
            let userEnteredInteger = Int(userEnteredString)
            
            if let number = userEnteredInteger {
                
                var isPrime = true
                
                if number == 1 {
                    
                    isPrime = false
                }
                
                var u = 2
                
                while u < number {
                    
                    if number % u == 0 {
                        
                        isPrime = false
                    }
                    
                    u += 1
                }
                if isPrime {
                    resultLabel.text = "\(number) is prime"
                    
                } else {
                
                resultLabel.text = "\(number) is not prime"
            }
        }
        
    }
        
}

}
