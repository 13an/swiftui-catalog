//
//  MainView.swift
//  Catalog
//
//  Created by 13an on 2023/07/08.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject private var hapticEngine: HapticEngine // 共有の HapticEngine インスタンスを参照する
    //    @StateObject private var hapticEngine = HapticEngine()

    @State private var selectedTab: Int = 0 // タブの選択状態を保持する
    
    
    var body: some View {
        TabView(selection: $selectedTab) {
            StaticTextView()
                .tabItem {
                    Label("Text", systemImage: "textformat")
                }
                .tag(0) // タグを指定
            ImageView()
                .tabItem {
                    Label("Image", systemImage: "photo")
                }
                .tag(1) // タグを指定
            VideoView()
                .tabItem {
                    Label("Video", systemImage: "video")
                }
                .tag(2) // タグを指定
            HapticsView()
                .tabItem {
                    Label("Haptics", systemImage: "burst")
                }
                .tag(3) // タグを指定
            SpriteBoxView()
                .tabItem {
                    Label("Sprite", systemImage: "cube.fill")
                }
                .tag(4) // タグを指定
            GameView()
                .tabItem {
                    Label("Game", systemImage: "gamecontroller.fill")
                }
                .tag(5) // タグを指定
        }
        .onAppear {
            hapticEngine.prepareHaptics()
        }
        .onChange(of: selectedTab) { tab in
            hapticEngine.hapticFeedbackLightDouble()
        }
        .environmentObject(hapticEngine)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
