//
//  Image_Resize.swift
//  SwiftUICatalog
//
//  Created by 13an on 2023/07/11.
//

import SwiftUI

struct ImageCatalog_Resize: View {
    var body: some View {
        VStack (alignment: .leading) {
            VStack(alignment: .trailing) {
                Image("sunset")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 160)
                    .border(.red)
                
                Text(".fill")
                    .padding(8)
                    .background(.black)
                    .foregroundColor(.white)
                    .font(.headline)
                    .offset(x: -16, y: -8)
            }
            
            VStack(alignment: .trailing) {
                Image("sunset")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 160)
                    .border(.red)
                    .clipped()
                
                Text(".fill and .clipped")
                    .padding(8)
                    .background(.black)
                    .foregroundColor(.white)
                    .font(.headline)
                    .offset(x: -16, y: -8)
            }
            
            VStack(alignment: .trailing) {
                Image("sunset")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 160)
                    .border(.red)
                
                Text(".fit")
                    .padding(8)
                    .background(.black)
                    .foregroundColor(.white)
                    .font(.headline)
                    .offset(x: -16, y: -8)
            }
        }
        
    }
}

struct ImageCatalog_Resize_Previews: PreviewProvider {
    static var previews: some View {
        ImageCatalog_Resize()
    }
}
