//
//  HapticFeedbackView.swift
//  SwiftUICatalog
//
//  Created by 13an on 2023/07/11.
//

import SwiftUI
import CoreHaptics
import AVKit

struct HapticsView: View {
    @State private var showingSetting = false

    @StateObject private var hapticEngine = HapticEngine()
    @State var audioPlayer: AVAudioPlayer!
    
    var body: some View {
        NavigationView {
            List {
                Section("Light") {
                    Button("Light Haptic Feedback") {
                        
                    }
                    .onAppear(perform: hapticEngine.prepareHaptics)
                    .onTapGesture(perform: hapticEngine.hapticFeedbackLight)
                }
                
                Section("Light Double") {
                    Button("Light Double Haptic Feedback") {
                        
                    }
                    .onAppear(perform: hapticEngine.prepareHaptics)
                    .onTapGesture(perform: hapticEngine.hapticFeedbackLightDouble)
                }
                
                Section("Music with Haptics") {
                    HapticsView_Music()
                }
            }
            .navigationTitle("Haptics")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Setting") {
                        showingSetting.toggle()
                    }
                    .sheet(isPresented: $showingSetting) {
                        Setting()
                    }
                }
            }
        }
    }
}

struct HapticFeedbackView_Previews: PreviewProvider {
    static var previews: some View {
        HapticsView()
    }
}
