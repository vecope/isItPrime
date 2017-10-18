//
//  ViewController.swift
//  isItPrime
//
//  Created by Camilo Alfonso on 17/10/17.
//  Copyright © 2017 Camilo Alfonso. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtNumber: UITextField!
    
    @IBOutlet weak var lblResult: UILabel!
    
    
    @IBAction func primeCheck(_ sender: Any) {
        
        var isItPrime: Bool = true;
        
        if let value = txtNumber.text{
            
            let valueAsNumber = Int(value)
            
            if let number = valueAsNumber {
                var counter = 2
                
                if valueAsNumber == 1{
                    isItPrime = false
                }
                
                while counter < valueAsNumber!{
                    if (valueAsNumber! % counter == 0){
                        isItPrime = false;
                    }
                    counter += 1
                }
                
                if isItPrime {
                    lblResult.text = "\(value) is a prime number"
                }
                else{
                    lblResult.text = "\(value) is not a prime number"
                }
            }
            else {
                lblResult.text = "Please insert a valid input"
            }
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

