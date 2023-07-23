//
//  VideoView.swift
//  SwiftUICatalog
//
//  Created by 13an on 2023/07/11.
//

import SwiftUI
import AVKit

struct VideoCatalog: View {
    @State private var showingSetting = false

    var body: some View {
        NavigationView {
                VideoPlayer(player: AVPlayer(url:  Bundle.main.url(forResource: "ikigai", withExtension: "mov")!))
            .navigationTitle("Image")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Setting") {
                        showingSetting.toggle()
                    }
                    .sheet(isPresented: $showingSetting) {
                        SettingView()
                    }
                }
            }
        }
    }
}

struct VideoCatalog_Previews: PreviewProvider {
    static var previews: some View {
        VideoCatalog()
    }
}
