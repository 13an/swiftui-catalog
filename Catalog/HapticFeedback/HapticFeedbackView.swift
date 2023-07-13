//
//  HapticFeedbackView.swift
//  SwiftUICatalog
//
//  Created by 13an on 2023/07/11.
//

import SwiftUI
import CoreHaptics

struct HapticFeedbackView: View {
    @StateObject private var hapticEngine = HapticEngine()
    
    var body: some View {
        Text("Tap and Feel!")
            .onAppear(perform: hapticEngine.prepareHaptics)
            .onTapGesture(perform: hapticEngine.complexSuccess)
    }
}

struct HapticFeedbackView_Previews: PreviewProvider {
    static var previews: some View {
        HapticFeedbackView()
    }
}
