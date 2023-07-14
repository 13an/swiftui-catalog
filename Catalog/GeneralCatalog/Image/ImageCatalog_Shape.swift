//
//  Image_Shape.swift
//  SwiftUICatalog
//
//  Created by 13an on 2023/07/11.
//

import SwiftUI

struct ImageCatalog_Shape: View {
    var body: some View {
        VStack {
            HStack {
                Image("sunset")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                
                Spacer()
                
                Text(".clipShape(Circle())")
                    .padding(4)
                    .foregroundColor(.primary)
                    .font(.headline)
            }
            
            HStack {
                Image("sunset")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(.red, lineWidth: 8))
                
                Spacer()
                
                Text(".overlay(Circle().stroke(.red, liewidth: 8))")
                    .padding(4)
                    .foregroundColor(.primary)
                    .font(.headline)
            }
            
            HStack {
                Image("sunset")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                    .mask(
                        Text("🫶")
                            .font(.system(size: 72))
                     )
                
                Spacer()
                
                Text(".mask by 🫶")
                    .padding(4)
                    .foregroundColor(.primary)
                    .font(.headline)
            }
        }
    }
}

struct ImageCatalog_Shape_Previews: PreviewProvider {
    static var previews: some View {
        ImageCatalog_Shape()
    }
}
