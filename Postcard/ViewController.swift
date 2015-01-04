//
//  ViewController.swift
//  Postcard
//
//  Created by Никита Цыганов on 01.01.15.
//  Copyright (c) 2015 nts. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var messageLabel2: UILabel!
    
    @IBOutlet weak var mailButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        enterMessageTextField.text = nil
        enterMessageTextField.resignFirstResponder()
        mailButton.setTitle(nil, forState: UIControlState.Normal)
        
        messageLabel2.text = enterNameTextField.text
        messageLabel2.textColor = UIColor.blueColor()
        messageLabel2.hidden = false
        enterNameTextField.text = nil
        enterNameTextField.resignFirstResponder()
        
    }
    

}

