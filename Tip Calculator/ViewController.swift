//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Nikhil Agrawal on 26/01/19.
//  Copyright © 2019 Nikhil Agrawal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func onTap(_ sender: Any) {
        // To dismiss the keyboard
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        // grab the bill amount
        let billAmount = Double(billField.text!) ?? 0
       // calculte the tip
        
        let tipPercentages = [0.15,0.18,0.20]
        let tip = billAmount * tipPercentages[tipControl.selectedSegmentIndex]
        let total = billAmount + tip
        
      // update the tip amount
        tipLabel.text = String(format: "$%.2f",tip)
        totalLabel.text = String(format: "$%.2f",total)
    }
}

