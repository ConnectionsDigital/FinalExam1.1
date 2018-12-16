//
//  ViewController.swift
//  FinalExam1.1
//
//  Created by Kenneth W Jackson on 12/12/18.
//  Copyright © 2018 Connections Digital. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Setup results label
    @IBOutlet weak var resultsLabel: UILabel!
    
    // Setup data entry fields
    @IBOutlet weak var gradeFieldOne: UITextField!
    @IBOutlet weak var gradeFieldTwo: UITextField!
    @IBOutlet weak var gradeFieldThree: UITextField!
    
    // Setup "Calculate Grade Average" button
    @IBAction func calculateButton(_ sender: Any) {
        
        // Convert data entry strings to itegers
        let grade1 = Int(gradeFieldOne.text!)
        let grade2 = Int(gradeFieldTwo.text!)
        let grade3 = Int(gradeFieldThree.text!)
        
        // Verify fields contain data
        let gradeString1 = (gradeFieldOne.text!)
        let gradeString2 = (gradeFieldTwo.text!)
        let gradeString3 = (gradeFieldThree.text!)
        
        if(gradeString1.isEmpty) || (gradeString2.isEmpty) || (gradeString3.isEmpty) {
            let myAlert = UIAlertController(title: "Alert", message: "All fields are required.", preferredStyle: UIAlertController.Style.alert)
            
            let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            
            myAlert.addAction(okAction)
            
            self.present(myAlert, animated: true, completion: nil)
            return
            
        }
        
        // Declare gradeList array
        var gradesList: [Int] = []
        
        // Append grades entered on the acreen to the gradesList array
        gradesList.append(grade1!)
        gradesList.append(grade2!)
        gradesList.append(grade3!)
        
        // Calculate sum of grades
        var total = 0
        for grade in gradesList {
            total += grade
        }
        
        // Calculate average
        let average = total / gradesList.count
        
        // Display results to device screen
        if average >= 70 {
            resultsLabel.text = "Your average is \(average). \nYou Passed!"
        } else {
            resultsLabel.text = "Your average is \(average). \nBetter luck next time."
        }
        //gradeFieldOne.becomeFirstResponder()
    }
        
    override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
        
    }
}

