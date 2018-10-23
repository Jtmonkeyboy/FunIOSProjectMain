//
//  ViewController.swift
//  FunIOSProject
//
//  Created by Runyan, Jacob on 10/17/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var complimentButton: UIButton!
    @IBOutlet weak var iLoveYou: UILabel!
    @IBOutlet weak var incredible: UILabel!
    @IBOutlet weak var beautiful: UILabel!
    @IBOutlet weak var emojiOK: UILabel!
    
    var randomNumber : Int = Int(arc4random() % 5)
    
    override func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    var oldNumber : Int = 7
    var isValid = false
    
    @IBAction func complimentClick(_ sender: Any)-> Void
    {
        randomNumber = Int(arc4random() % 5)
        isValid = false
        while(!isValid)
        {
            if(randomNumber == oldNumber)
            {
                randomNumber = Int(arc4random() % 5)
            }
            else
            {
                oldNumber = randomNumber
                isValid = true
            }
        }
        if(randomNumber == 1)
        {
            iLoveYou.isHidden = false
            
            incredible.isHidden = true
            beautiful.isHidden = true
            emojiOK.isHidden = true
        }
        if(randomNumber == 2)
        {
            incredible.isHidden = false
            
            iLoveYou.isHidden = true
            beautiful.isHidden = true
            emojiOK.isHidden = true
        }
        if(randomNumber == 3)
        {
            beautiful.isHidden = false
            
            iLoveYou.isHidden = true
            incredible.isHidden = true
            emojiOK.isHidden = true
        }
        if(randomNumber == 4)
        {
            emojiOK.isHidden = false
            
            iLoveYou.isHidden = true
            incredible.isHidden = true
            beautiful.isHidden = true
        }
        
    }
    
}

