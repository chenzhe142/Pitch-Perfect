//
//  ViewController.swift
//  Pitch Perfect
//
//  Created by 陈喆 on 15/1/21.
//  Copyright (c) 2015年 Zhe Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //connect UI element with code
    @IBOutlet weak var recordInProgress: UILabel!
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var recordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        //hide the stop button
        stopButton.hidden = true
        recordButton.enabled = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(sender: UIButton){
        stopButton.hidden = false
        //TODO: record the user's voice
        recordInProgress.hidden = false
        recordButton.enabled = false
    }

    @IBAction func stopRecording(sender: UIButton) {
        recordInProgress.hidden = true
    }

}

