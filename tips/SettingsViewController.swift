//
//  SettingsViewController.swift
//  tips
//
//  Created by David Lundgren on 4/14/15.
//  Copyright (c) 2015 Rdio. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tipController: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var defaults = NSUserDefaults.standardUserDefaults()
        var intValue = defaults.integerForKey("tipIndex")
        tipController.selectedSegmentIndex = intValue
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

    @IBAction func onTipChanged(sender: AnyObject) {
        println("\(tipController.selectedSegmentIndex)")
        var defaults = NSUserDefaults.standardUserDefaults()
        defaults.setInteger(tipController.selectedSegmentIndex, forKey: "tipIndex")
        defaults.synchronize()
    }
    
    @IBAction func onTap(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
}
