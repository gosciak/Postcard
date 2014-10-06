//
//  ViewController.swift
//  Postcard
//
//  Created by Doug Gosciak on 14/10/04.
//  Copyright (c) 2014 Doug Gosciak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressd(sender: UIButton) {
        self.messageLabel.hidden = false
        self.messageLabel.text = self.enterMessageTextField.text
        self.messageLabel.textColor = UIColor.redColor()
        
        
        self.enterMessageTextField.text = ""
        self.enterMessageTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

