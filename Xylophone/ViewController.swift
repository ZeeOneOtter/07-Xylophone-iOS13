//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation // package allows us to tap into audio visal components of iPhone


class ViewController: UIViewController {
    
    var audioPlayer : AVAudioPlayer! //create an instance of the audio player!!
    let soundArray = ["C","D","E","F","G","A","B"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(soundName: sender.currentTitle!)
    }
    
    func playSound(soundName : String) {
        let soundUrl = Bundle.main.url(forResource: soundName, withExtension: "wav")
        audioPlayer = try! AVAudioPlayer(contentsOf: soundUrl!)
        audioPlayer.play()
    }
    
}
