//
//  ContentView.swift
//  Catalog
//
//  Created by 13an on 2023/07/08.
//

import SwiftUI

struct TextCatalog: View {
    @State private var showingSetting = false
    
    let heights = stride(from: 0.1, through: 1.0, by: 0.1).map { PresentationDetent.fraction($0) }
    
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
                            .presentationDetents(Set(heights))
                            .presentationDragIndicator(.hidden)
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
