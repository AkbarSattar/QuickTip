//
//  ViewController.swift
//  QuickTip
//
//  Created by Akbar Sattar on 4/7/17.
//  Copyright © 2017 Akbar Sattar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

// OUTLETS------------------------------------------------------------------------------------------------
    @IBOutlet weak var amountTextField: UITextField!

    @IBOutlet weak var tipPercent5: UILabel!
    @IBOutlet weak var tipTotal5: UILabel!
    
    @IBOutlet weak var tipPercent10: UILabel!
    @IBOutlet weak var tipTotal10: UILabel!
    
    @IBOutlet weak var tipPercent15: UILabel!
    @IBOutlet weak var tipTotal15: UILabel!
   
    @IBOutlet weak var tipPercent20: UILabel!
    @IBOutlet weak var tipTotal20: UILabel!
    
    @IBOutlet weak var tipPercent25: UILabel!
    @IBOutlet weak var tipTotal25: UILabel!
    
    @IBOutlet weak var tipPercent30: UILabel!
    @IBOutlet weak var tipTotal30: UILabel!
    
    @IBOutlet weak var tipPercent35: UILabel!
    @IBOutlet weak var tipTotal35: UILabel!
    
    @IBOutlet weak var tipPercent40: UILabel!
    @IBOutlet weak var tipTotal40: UILabel!
    
    @IBOutlet weak var tipPercent45: UILabel!
    @IBOutlet weak var tipTotal45: UILabel!
// OUTLETS -----------------------------------------------------------------------------------------------
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
      
    // Set the Keyboard type to numberpad, restricting inputs to numbers only
        amountTextField.keyboardType = .decimalPad
        
        func textField(_ amountTextField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
            let invalidCharacters = CharacterSet(charactersIn: "0123456789.").inverted
            return string.rangeOfCharacter(from: invalidCharacters, options: [], range: string.startIndex ..< string.endIndex) == nil
        
        
        }

    }

    
    
// SUBMIT BUTTON
    @IBAction func generateTip(_ sender: Any) {
        
    
    // Dismiss number pad
        amountTextField.endEditing(true);

      
    // Check to see if text field is empty
        if ((amountTextField.text?.isEmpty)!){
            
        // If it is empty, present a warning box to user
            let alert = UIAlertController(title: "Oops!", message: "Please enter an amount", preferredStyle: UIAlertControllerStyle.alert)
          
        // Dismiss warning box
            alert.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)}
            
        else {
            
    // Calculate tip and set text
            let amount: Double = Double(amountTextField.text!)!
                tipPercent5.text = "Tip: " + String(format: "%.2f", amount*0.05)
                tipPercent10.text = "Tip: " + String(format: "%.2f",amount*0.10)
                tipPercent15.text = "Tip: " + String(format: "%.2f",amount*0.15)
                tipPercent20.text = "Tip: " + String(format: "%.2f",amount*0.20)
                tipPercent25.text = "Tip: " + String(format: "%.2f",amount*0.25)
                tipPercent30.text = "Tip: " + String(format: "%.2f",amount*0.30)
                tipPercent35.text = "Tip: " + String(format: "%.2f",amount*0.35)
                tipPercent40.text = "Tip: " + String(format: "%.2f",amount*0.40)
                tipPercent45.text = "Tip: " + String(format: "%.2f",amount*0.45)
            
        
            
    // Calculate the total and display it
                tipTotal5.text = "Total: " + String(format: "%.2f", amount*0.05 + amount)
                tipTotal10.text = "Total: " + String(format: "%.2f", amount*0.10 + amount)
                tipTotal15.text = "Total: " + String(format: "%.2f", amount*0.15 + amount)
                tipTotal20.text = "Total: " + String(format: "%.2f", amount*0.20 + amount)
                tipTotal25.text = "Total: " + String(format: "%.2f", amount*0.25 + amount)
                tipTotal30.text = "Total: " + String(format: "%.2f", amount*0.30 + amount)
                tipTotal35.text = "Total: " + String(format: "%.2f", amount*0.35 + amount)
                tipTotal40.text = "Total: " + String(format: "%.2f", amount*0.40 + amount)
                tipTotal45.text = "Total: " + String(format: "%.2f",amount*0.45 + amount)
        
        }
        
        
        
        
    }
    
  // CLEAR BUTTON
    @IBAction func clearButton(_ sender: UIButton) {
   
    // Dismiss number pad
        amountTextField.endEditing(true);
        
    //Reset input field
        amountTextField.text = ""
    
    //Reset percent outputs
        tipPercent5.text = "Tip: "
        tipPercent10.text = "Tip: "
        tipPercent15.text = "Tip: "
        tipPercent20.text = "Tip: "
        tipPercent25.text = "Tip: "
        tipPercent30.text = "Tip: "
        tipPercent35.text = "Tip: "
        tipPercent40.text = "Tip: "
        tipPercent45.text = "Tip: "
    
    //Reset total outputs
        tipTotal5.text = "Total: "
        tipTotal10.text = "Total: "
        tipTotal15.text = "Total: "
        tipTotal20.text = "Total: "
        tipTotal25.text = "Total: "
        tipTotal30.text = "Total: "
        tipTotal35.text = "Total: "
        tipTotal40.text = "Total: "
        tipTotal45.text = "Total: "
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
 
    
    

}

