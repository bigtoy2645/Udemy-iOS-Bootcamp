//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    let eggTimes = ["Soft":3, "Medium":4, "Hard":12]
    var eggTimer = Timer()
    var player: AVAudioPlayer?
    var totalTime = 0
    var secondsPassed = 0
    
    @IBOutlet weak var lableTitle: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBAction func hardnessAction(_ sender: UIButton) {
        let hardness = sender.currentTitle!
        
        totalTime = eggTimes[hardness]!
        progressBar.progress = 0.0
        secondsPassed = 0
        lableTitle.text = hardness
        
        if true == eggTimer.isValid {
            eggTimer.invalidate()
        }
        
        eggTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
        if secondsPassed < totalTime {
            self.secondsPassed += 1
            progressBar.progress = Float(secondsPassed) / Float(totalTime)
        } else {
            self.lableTitle.text = "Done"
            eggTimer.invalidate()
            
            let path = Bundle.main.path(forResource: "alarm_sound.mp3", ofType:nil)!
            let url = URL(fileURLWithPath: path)

            do {
                player = try AVAudioPlayer(contentsOf: url)
                player?.play()
            } catch let error {
                print(error.localizedDescription)
            }
        }
    }
}
