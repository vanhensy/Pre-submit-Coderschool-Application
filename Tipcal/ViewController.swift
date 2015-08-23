//
//  ViewController.swift
//  Tipcal
//
//  Created by Nguyễn Vương Anh Vỹ on 8/19/15.
//  Copyright (c) 2015 vanhensy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        self.billField.becomeFirstResponder()
        billField.placeholder = "$"
    
    }
    
    // Start Caching
    
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        println("view will appear")
        var savedValue = NSUserDefaults.standardUserDefaults()
        var checkValue = savedValue.doubleForKey("savedvalue")
        switch checkValue {
        case 0.1 : tipControl.selectedSegmentIndex = 0
        case 0.15: tipControl.selectedSegmentIndex = 1
        default: tipControl.selectedSegmentIndex = 2
        }
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        println("view did appear")
        

        
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        println("view will disappear")
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        println("view did disappear")
        
    }
    
    
    
    // End Caching

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        // checking default vallue
        var savedValue = NSUserDefaults.standardUserDefaults()
        var doubValue = savedValue.doubleForKey("savedvalue")
        println("Default value is \(doubValue)")
        // normal cal
        var tipPercentages = [0.1, 0.15, 0.2]
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        var billAmount = (billField.text as NSString).doubleValue
        var tip = billAmount * tipPercentage
        var total = billAmount + tip
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        
    }

    @IBAction func onTapScreen(sender: AnyObject) {
        view.endEditing(true)    }
    
    
}

