//
//  ViewController.swift
//  Tapper
//
//  Created by Bryan Ebert on 10/8/15.
//  Copyright © 2015 Bryan Ebert. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Properties
    var maxTaps = 0
    var currentTaps = 0
    

    //Outlets
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManytapstxt: UITextField!
    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var tapButton: UIButton!
    @IBOutlet weak var tapsLabel: UILabel!
    
    @IBAction func OnCoinTapped(sender: UIButton!) {
        currentTaps++
        UpdateTapsLabel()
        
        if isgameover() {
            restartgame()
        }
    }
    
    @IBAction func OnPlayBtnPress(sender: UIButton!) {
       
        
        if howManytapstxt.text != nil && howManytapstxt.text != "" {
            
            logoImg.hidden = true
            playButton.hidden = true
            howManytapstxt.hidden = true
            tapButton.hidden = false
            tapsLabel.hidden = false
            
            maxTaps = Int(howManytapstxt.text!)!
            currentTaps = 0
            
            UpdateTapsLabel()
        }
    }
    
    func restartgame() {
        maxTaps = 0
        howManytapstxt.text = ""
        logoImg.hidden = false
        playButton.hidden = false
        howManytapstxt.hidden = false
        
        tapButton.hidden = true
        tapsLabel.hidden = true
    }
    
    func isgameover() -> Bool {
        if currentTaps >= maxTaps {
            return true
        } else {
            return false
        }
    }
    
    func UpdateTapsLabel(){
        tapsLabel.text = "\(currentTaps) Taps"

    }

}

