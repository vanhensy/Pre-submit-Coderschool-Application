//
//  MenuViewController.swift
//  Tipcal
//
//  Created by Nguyễn Vương Anh Vỹ on 8/20/15.
//  Copyright (c) 2015 vanhensy. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    @IBOutlet weak var backButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func backButtononTap(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
}
