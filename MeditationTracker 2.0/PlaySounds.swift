//
//  PlaySounds.swift
//  MeditationTracker 2.0
//
//  Created by Garrick Henne on 2020-07-01.
//  Copyright © 2020 Garrick Henne. All rights reserved.
//

import Foundation
import AVFoundation

// MARK: - Audio Player

var audioPlayer: AVAudioPlayer?

func playSound(sound: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: ".mp3") {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Could not find and play the sound file.")
        }
    }
}

