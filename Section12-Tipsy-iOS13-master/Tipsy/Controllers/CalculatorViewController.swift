//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var tenButton: UIButton!
    @IBOutlet weak var twentyButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var bill = 0.0
    var tip = 0.1
    var person = 2
    var resultString = ""

    @IBAction func tipChanged(_ sender: UIButton) {
        billTextField.endEditing(true)
        
        zeroButton.isSelected = false
        tenButton.isSelected = false
        twentyButton.isSelected = false
        
        sender.isSelected = true
        
        let tipString = sender.currentTitle?.dropLast()
        tip = Double(tipString!)! / 100
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(format: "%.f", sender.value)
        person = Int(sender.value)
    }
    
    @IBAction func calculatePressed(_ sender: Any) {
        if let billTotal = billTextField.text {
            bill = Double(billTotal)!
            let result = (bill + (bill * tip)) / Double(person)
            resultString = String(format: "%.2f", result)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ResultsViewController
        destinationVC.billValue = resultString
        destinationVC.person = person
        destinationVC.tip = Int(tip * 100)
    }
    
}

