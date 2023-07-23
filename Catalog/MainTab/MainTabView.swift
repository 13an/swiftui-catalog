//
//  MainTabView.swift
//  SwiftUICatalog
//
//  Created by 13an on 2023/07/23.
//

import SwiftUI

struct MainTabView: View {
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
        }
    }
}

enum TabType: Int, CaseIterable {
    case generalCatalog = 0
    case spriteBox
    case game
    
    var tabItem: TabItemData {
        switch self {
        case .generalCatalog:
            return TabItemData(image: "ic_home", selectedImage: "ic_home_selected", title: "Home")
        case .spriteBox:
            return TabItemData(image: "ic_myfile", selectedImage: "ic_myfile_selected", title: "My File")
        case .game:
            return TabItemData(image: "ic_profile", selectedImage: "ic_profile_selected", title: "Me")
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
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
