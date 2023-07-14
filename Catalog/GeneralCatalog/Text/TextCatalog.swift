//
//  ContentView.swift
//  Catalog
//
//  Created by 13an on 2023/07/08.
//

import SwiftUI

struct TextCatalog: View {
    @State private var showingSetting = false
    
    var body: some View {
        NavigationView {
            List {
                Section("Length") {
                    TextCatalog_Length()
                }
                
                Section("Style") {
                    TextCatalog_Style()
                }
                
                Section("AttributedString") {
                    TextCatalog_AtributedString()
                }
                
                Section("TextAlignment") {
                    TextCatalog_Alignment()
                }
            }
            .navigationTitle("Text")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Setting") {
                        showingSetting.toggle()
                    }
                    .sheet(isPresented: $showingSetting) {
                        Setting()
                    }
                }
            }
        }
    }
}

struct TextCatalog_Previews: PreviewProvider {
    static var previews: some View {
        TextCatalog()
    }
}
