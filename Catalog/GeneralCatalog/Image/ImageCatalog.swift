//
//  ImageView.swift
//  SwiftUICatalog
//
//  Created by 13an on 2023/07/11.
//

import SwiftUI

struct ImageCatalog: View {
    @State private var showingSetting = false

    var body: some View {
        NavigationView {
            List {
                Section("Resize") {
                    ImageCatalog_Resize()
                }
                
                Section("Shape") {
                    ImageCatalog_Shape()
                }
                
                Section("Tile") {
                    ImageCatalog_Tile()
                }
                
                Section("SF Symbols") {
                    ImageCatalog_SFSymbols()
                }
            }
            .navigationTitle("Image")
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

struct ImageCatalog_Previews: PreviewProvider {
    static var previews: some View {
        ImageCatalog()
    }
}
