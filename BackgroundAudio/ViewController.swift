//
//  ViewController.swift
//  BackgroundAudio
//
//  Created by Çağdaş Sarıgil on 12.06.2023.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var audioPlayer : AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        do {
            let filePath = Bundle.main.path(forResource: "music", ofType: ".mp3")
            guard let path = filePath else { return }
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: path))
            audioPlayer?.prepareToPlay()
            
        } catch {
            print(error.localizedDescription)
        }
    }

    @IBAction func play(_ sender: Any) {
        audioPlayer?.play()
    }
    
    @IBAction func stop(_ sender: Any) {
        audioPlayer?.stop()
    }
}

