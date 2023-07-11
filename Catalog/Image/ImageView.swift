//
//  ImageView.swift
//  SwiftUICatalog
//
//  Created by 13an on 2023/07/11.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        NavigationView {
            List {
                Section("Resize") {
                    Image_Resize()
                }
                
                Section("Shape") {
                    Image_Shape()
                }
                
                Section("Tile") {
                    Image_Tile()
                }
                
                Section("SF Symbols") {
                    Image_SFSymbols()
                }
            }
            .navigationTitle("Image")
        }
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
