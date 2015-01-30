//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Mat Sletten on 9/19/14.
//  Copyright (c) 2014 Mat Sletten. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var guessText: UITextField!
    
    @IBAction func guessButtonPressed(sender: AnyObject)
    {
        var numberOfFingers = Int(arc4random() % 6)
       //can convert numberOfFingers to string by creating a variable and calling method String(numberOfFingers). Also, I made sure that a user has entered a guess before either if or else evaluates.
        if (numberOfFingers == guessText.text.toInt() && guessText.text.toInt() != nil)
       {
        guessMessageText.text = "Congratulations"
        }
        else if (guessText.text.toInt() == nil)
        {
            guessMessageText.text = "Please enter a guess"
        }
        else
       {
        guessMessageText.text = "Please Guess Again"
        }
    }
    
    @IBOutlet weak var guessMessageText: UILabel!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

