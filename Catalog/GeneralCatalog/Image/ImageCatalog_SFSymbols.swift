//
//  Image_SFSymbols.swift
//  SwiftUICatalog
//
//  Created by 13an on 2023/07/11.
//

import SwiftUI

struct ImageCatalog_SFSymbols: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "sunset")
                
                Spacer()
                
                Text("default")
                    .padding(4)
                    .foregroundColor(.primary)
                    .font(.headline)
            }
            
            HStack {
                Image(systemName: "sunset")
                    .font(.largeTitle)
                
                Spacer()
                
                Text(".largeTitle")
                    .padding(4)
                    .foregroundColor(.primary)
                    .font(.headline)
            }
            
            HStack {
                Image(systemName: "sunset")
                    .foregroundColor(.red)
                
                Spacer()
                
                Text(".foregroundColor(.red)")
                    .padding(4)
                    .foregroundColor(.primary)
                    .font(.headline)
            }
            
            HStack {
                Image(systemName: "cloud.sun.rain.fill")
                    .renderingMode(.original)
                    .padding()
                    .background(.black)
                    .clipShape(Circle())
                
                Spacer()
                
                Text(".renderingMode(.original)")
                    .padding(4)
                    .foregroundColor(.primary)
                    .font(.headline)
            }
            
            HStack {
                Image(systemName: "person.crop.circle.fill.badge.plus")
                    .renderingMode(.original)
                    .foregroundStyle(.gray)
                    .font(.largeTitle)
                Image(systemName: "person.crop.circle.fill.badge.plus")
                    .renderingMode(.original)
                    .foregroundStyle(.black)
                    .font(.largeTitle)
                Image(systemName: "person.crop.circle.fill.badge.plus")
                    .renderingMode(.original)
                    .foregroundStyle(.red)
                    .font(.largeTitle)
                
                Spacer()
                
                Text(".renderingMode(.original), .foregroundColor(.gray, .black, .red)")
                    .padding(4)
                    .foregroundColor(.primary)
                    .font(.headline)
            }
        }
    }
}

struct ImageCatalog_SFSymbols_Previews: PreviewProvider {
    static var previews: some View {
        ImageCatalog_SFSymbols()
    }
}
