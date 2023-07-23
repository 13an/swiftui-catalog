//
//  MainView.swift
//  Catalog
//
//  Created by 13an on 2023/07/08.
//

import SwiftUI
import CoreHaptics

struct MainTabView: View {
    @EnvironmentObject private var hapticEngine: HapticEngine // 共有の HapticEngine インスタンスを参照する
    @State private var selectedTab: Int = 0 // タブの選択状態を保持する
    @State var selectedIndex: Int = 0
        
    var body: some View {
        CustomTabView(tabs: TabType.allCases.map({ $0.tabItem }), selectedIndex: $selectedIndex) { index in
            let type = TabType(rawValue: index) ?? .generalCatalog
            getTabView(type: type)
        }
    }
    
    @ViewBuilder
    func getTabView(type: TabType) -> some View {
        switch type {
        case .generalCatalog:
            GeneralCatalogView()
        case .spriteBox:
            SpriteBoxView()
        case .game:
            GameView()
        case .navigationSandbox:
            NavigationSandboxView()
        }
    }
}

enum TabType: Int, CaseIterable {
    case generalCatalog = 0
    case spriteBox
    case game
    case navigationSandbox
    
    var tabItem: TabItemData {
        switch self {
        case .generalCatalog:
            return TabItemData(image: "globe-america-outlined", selectedImage: "globe-america-filled", title: "General")
        case .spriteBox:
            return TabItemData(image: "message-outlined", selectedImage: "message-filled", title: "Spritebox")
        case .game:
            return TabItemData(image: "person-outlined", selectedImage: "person-filled", title: "Game")
        case .navigationSandbox:
            return TabItemData(image: "person-filled", selectedImage: "person-filled", title: "Navigation")
        }
    }
}

struct CustomTabView<Content: View>: View {
    let tabs: [TabItemData]
    @Binding var selectedIndex: Int
    @ViewBuilder let content: (Int) -> Content
    
    var body: some View {
        ZStack {
            TabView(selection: $selectedIndex) {
                ForEach(tabs.indices) { index in
                    content(index)
                        .tag(index)
                }
            }
            
            VStack {
                Spacer()
                TabBottomView(tabbarItems: tabs, selectedIndex: $selectedIndex)
            }
            .padding(.bottom, 8)
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
            .environmentObject(HapticEngine())
    }
}
