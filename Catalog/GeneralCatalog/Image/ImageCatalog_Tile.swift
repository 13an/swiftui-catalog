//
//  Image_Tile.swift
//  SwiftUICatalog
//
//  Created by 13an on 2023/07/11.
//

import SwiftUI

struct ImageCatalog_Tile: View {
    var body: some View {
        VStack {
            Image(systemName: "sunset")
                .resizable(resizingMode: .tile)
                .aspectRatio(contentMode: .fill)
                .frame(width: 320, height: 200, alignment: .topLeading)
                .border(.blue)
                .clipped()
            
            Text(".tile, .fill, and .clipped")
                .padding(8)
                .background(.black)
                .foregroundColor(.white)
                .font(.headline)
                .offset(x: -16, y: -8)
        }
    }
}

struct ImageCatalog_Tile_Previews: PreviewProvider {
    static var previews: some View {
        ImageCatalog_Tile()
    }
}
