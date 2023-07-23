//
//  Setting.swift
//  SwiftUICatalog
//
//  Created by 13an on 2023/07/14.
//

import SwiftUI

struct SettingView: View {
    @Environment(\.dismiss) var dismiss
    @StateObject private var hapticEngine = HapticEngine()
    
    var body: some View {
        VStack {
            NavigationView {
                List {
                    NavigationLink("Name") {
                        Setting_Name()
                    }
                    NavigationLink("Username") {
                        Setting_Name()
                    }
                    NavigationLink("Birthday") {
                        Setting_Name()
                    }
                    NavigationLink("Joined At") {
                        Setting_Name()
                    }
                    NavigationLink("Bio") {
                        Setting_Name()
                    }
                }
                .navigationTitle("Setting")
            }
            Button("Close") {
                dismiss()
                hapticEngine.playHapticsFile(named: "light")
            }
            .font(.title)
            .buttonStyle(.bordered)
        }
        .background(Color.black.opacity(0.0))
        .interactiveDismissDisabled()
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
