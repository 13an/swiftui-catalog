//
//  MainView.swift
//  Catalog
//
//  Created by 13an on 2023/07/08.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            StaticTextView()
                .tabItem {
                    Label("Text", systemImage: "textformat")
                }
            ImageView()
                .tabItem {
                    Label("Image", systemImage: "photo")
                }
            VideoView()
                .tabItem {
                    Label("Video", systemImage: "video")
                }
            HapticFeedbackView()
                .tabItem {
                    Label("Haptic", systemImage: "burst")
                }
            StaticTextView()
                .tabItem {
                    Label("Static Text", systemImage: "list.dash")
                }
            StaticTextView()
                .tabItem {
                    Label("Static Text", systemImage: "list.dash")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
