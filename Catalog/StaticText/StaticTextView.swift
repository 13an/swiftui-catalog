//
//  ContentView.swift
//  Catalog
//
//  Created by 13an on 2023/07/08.
//

import SwiftUI

struct StaticTextView: View {
    var body: some View {
        NavigationView {
            List {
                Section("Length") {
                    StaticText_Length()
                }
                
                Section("Style") {
                    StaticText_Style()
                }
            }
            .navigationTitle("Text")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        StaticTextView()
    }
}
