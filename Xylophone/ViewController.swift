  //
  //  ViewController.swift
  //  Xylophone
  //
  //  Created by Angela Yu on 28/06/2019.
  //  Copyright © 2019 The App Brewery. All rights reserved.
  //

import UIKit
import AVFoundation

class ViewController: UIViewController {

  var player: AVAudioPlayer!
  let seconds = 3
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  @IBAction func keyPressed(_ sender: UIButton) {
    let title = sender.currentTitle!
    sender.alpha = 0.5
    usleep(200000)
    playSound(soundName: title)
    sender.alpha = 1
  }
  
  func playSound(soundName: String) {
    let url = Bundle.main.url(forResource: title, withExtension: "wav")
    player = try! AVAudioPlayer(contentsOf: url!)
    player.play()
  }
  
}

