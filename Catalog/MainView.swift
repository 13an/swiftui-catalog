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
                    Label("Text", systemImage: "list.dash")
                }
            StaticTextView()
                .tabItem {
                    Label("Static Text", systemImage: "list.dash")
                }
            StaticTextView()
                .tabItem {
                    Label("Static Text", systemImage: "list.dash")
                }
            StaticTextView()
                .tabItem {
                    Label("Static Text", systemImage: "list.dash")
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
