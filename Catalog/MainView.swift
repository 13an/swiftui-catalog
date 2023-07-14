//
//  MainView.swift
//  Catalog
//
//  Created by 13an on 2023/07/08.
//

import SwiftUI
import CoreHaptics

struct MainView: View {
    @EnvironmentObject private var hapticEngine: HapticEngine // 共有の HapticEngine インスタンスを参照する
    //    @StateObject private var hapticEngine = HapticEngine()

    @State private var selectedTab: Int = 0 // タブの選択状態を保持する
    
    
    var body: some View {
        TabView(selection: $selectedTab) {
            GeneralCatalogView()
                .tabItem {
                    Label("Text", systemImage: "textformat")
                }
                .tag(0) // タグを指定
            ImageCatalog()
                .tabItem {
                    Label("Image", systemImage: "photo")
                }
                .tag(1) // タグを指定
            VideoCatalog()
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
            NavigationSandboxView()
                .tabItem {
                    Label("Navigation", systemImage: "chevron.right.square.fill")
                }
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
