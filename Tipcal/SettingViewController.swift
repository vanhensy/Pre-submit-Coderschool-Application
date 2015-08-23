//
//  SettingViewController.swift
//  Tipcal
//
//  Created by Nguyễn Vương Anh Vỹ on 8/20/15.
//  Copyright (c) 2015 vanhensy. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

    
    @IBOutlet weak var defaultTipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var savedValue = NSUserDefaults.standardUserDefaults()
        var checkValue = savedValue.doubleForKey("savedvalue")
        switch checkValue {
        case 0.1 : defaultTipControl.selectedSegmentIndex = 0
        case 0.15: defaultTipControl.selectedSegmentIndex = 1
        default: defaultTipControl.selectedSegmentIndex = 2
        }

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillDisappear(animated: Bool) {
        var defaultValues = [0.1, 0.15, 0.2]
        var defaultValue = defaultValues[defaultTipControl.selectedSegmentIndex]
        var savedValue = NSUserDefaults.standardUserDefaults()
        savedValue.setDouble(defaultValue, forKey:"savedvalue")
        savedValue.synchronize()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func onChange(sender: AnyObject) {
        
    }
    
    @IBAction func tapBack(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
}
