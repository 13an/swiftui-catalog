//
//  StaticText_TextAlignment.swift
//  SwiftUICatalog
//
//  Created by 13an on 2023/07/11.
//

import SwiftUI

struct StaticText_TextAlignment: View {
    let alignments: [TextAlignment] = [.leading, .center, .trailing]
    @State private var alignment = TextAlignment.leading
    
    var body: some View {
        VStack {
            Text("This is an extremely long text string that will never fit even the widest of phones without wrapping")
                .font(.largeTitle)
                .multilineTextAlignment(alignment)
                .frame(width: 300)
            
            Picker("Text Alginment", selection: $alignment) {
                ForEach(alignments, id: \.self) {
                    alignment in
                    Text(String(describing: alignment))
                }
            }
        }
    }
}

struct StaticText_TextAlignment_Previews: PreviewProvider {
    static var previews: some View {
        StaticText_TextAlignment()
    }
}
