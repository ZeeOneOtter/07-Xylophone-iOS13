//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation // package allows us to tap into audio visual components of iPhone


class ViewController: UIViewController {
    
    var audioPlayer : AVAudioPlayer! //create an instance of the audio player!!
    let soundArray = ["C","D","E","F","G","A","B"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        //call function to play sound
        playSound(soundName: sender.currentTitle!)
        
        //Reduces the sender's (the button that got pressed) opacity to half.
        sender.alpha = 0.5
        
        //Code should execute after 0.2 second delay.
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            //Bring's sender's opacity back up to fully opaque.
            sender.alpha = 1.0
        }
        
        func playSound(soundName : String) {
            let soundUrl = Bundle.main.url(forResource: soundName, withExtension: "wav")
            audioPlayer = try! AVAudioPlayer(contentsOf: soundUrl!)
            audioPlayer.play()
        }
        
    }
}
