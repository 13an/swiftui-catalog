//
//  TextStyleSection.swift
//  Catalog
//
//  Created by 13an on 2023/07/08.
//

import SwiftUI

struct TextCatalog_Style: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            Text(".font(.largeTitle)")
                .font(.largeTitle)
            
            Text(".frame(width: 80)")
                .frame(width: 80)
            
            Text(".foregroundColor(.red)")
                .foregroundColor(.red)
            
            Text(".foregroundStyle(.linearGradient(colors: [.blue, .green], startPoint: .leading, endPoint: .trailing))")
                .foregroundStyle(.linearGradient(colors: [.blue, .green], startPoint: .leading, endPoint: .trailing))
            
            Text(".padding(), .background(.yellow), .foreground(.white), .font(.headline)")
                .padding()
                .background(.yellow)
                .foregroundStyle(.white)
                .font(.headline)
            
            Text(".background(.yellow), .padding(), .foreground(.white), .font(.headline)")
                .background(.yellow)
                .padding()
                .foregroundStyle(.white)
                .font(.headline)
            
            Text("lineSpacing(40), lineSpacing(40), lineSpacing(40), lineSpacing(40), lineSpacing(40), lineSpacing(40)")
                .lineSpacing(50)

            
            Text(".fontDesign(.serif)")
                .fontDesign(.serif)
                .fontWeight(.black)
                .font(.headline)
            
            Text(".fontDesign(.monospaced)")
                .fontDesign(.monospaced)
                .fontWeight(.black)
                .font(.headline)
            
            Text(".fontDesign(.rounded)")
                .fontDesign(.rounded)
                .fontWeight(.black)
                .font(.headline)
        }
    }
}

struct TextCatalog_Style_Previews: PreviewProvider {
    static var previews: some View {
        TextCatalog_Style()
    }
}
