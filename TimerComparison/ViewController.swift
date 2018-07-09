//
//  ViewController.swift
//  TimerComparison
//
//  Created by Steven Lipton on 5/23/18.
//  Copyright © 2018 Steven Lipton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var differenceLabel: UILabel!
    let interval = 0.0005
    var timer = Timer()
   
    @IBAction func didToggleTimer(_ sender: UIButton) {
        if !timer.isValid{
            timer = Timer.scheduledTimer(withTimeInterval: interval, repeats: true, block:
                { (timer) in
                    
            })
        } else {
            timer.invalidate()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

