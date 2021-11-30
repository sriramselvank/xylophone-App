//
//  ViewController.swift
//  Xylophone
//
//  Created by ShreeThaanu on 29/11/21.
//  Copyright © 2021 sriram. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func keypressed(_ sender: UIButton) {
        
        sender.alpha = 0.5
        
        playSound(key: sender.currentTitle!)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1.0
        }

    }
    
    func playSound(key:String){
        let url = Bundle.main.url(forResource: key, withExtension: "wav")
        
        player = try! AVAudioPlayer(contentsOf: url!)
        player .play()
    }

}


