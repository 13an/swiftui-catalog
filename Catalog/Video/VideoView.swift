//
//  VideoView.swift
//  SwiftUICatalog
//
//  Created by 13an on 2023/07/11.
//

import SwiftUI
import AVKit

struct VideoView: View {
    var body: some View {
        NavigationView {
                VideoPlayer(player: AVPlayer(url:  Bundle.main.url(forResource: "ikigai", withExtension: "mov")!))
            .navigationTitle("Image")
        }
    }
}

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView()
    }
}
