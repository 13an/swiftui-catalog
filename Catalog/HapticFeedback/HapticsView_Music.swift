//
//  HapticsView_Music.swift
//  SwiftUICatalog
//
//  Created by 13an on 2023/07/13.
//

import SwiftUI
import AVKit

struct HapticsView_Music: View {
    @StateObject private var hapticEngine = HapticEngine()
    @State var audioPlayer: AVAudioPlayer!
    
    var body: some View {
        Button("Music with Haptics") {
            audioPlayer?.play()
            hapticEngine.hapticFeedback4Beats()
        }
        .onAppear {
            if let songURL = Bundle.main.url(forResource: "song", withExtension: "mp3") {
                audioPlayer = try? AVAudioPlayer(contentsOf: songURL)
                audioPlayer?.prepareToPlay()
                hapticEngine.prepareHaptics()
            }
        }
    }
}

struct HapticsView_Music_Previews: PreviewProvider {
    static var previews: some View {
        HapticsView_Music()
    }
}
