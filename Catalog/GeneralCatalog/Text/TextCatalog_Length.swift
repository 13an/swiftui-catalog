//
//  TextLengthSection.swift
//  Catalog
//
//  Created by 13an on 2023/07/08.
//

import SwiftUI

struct TextCatalog_Length: View {
    @StateObject private var hapticEngine = HapticEngine()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            Text("Hello, world!")
                .onTapGesture {
                    hapticEngine.prepareHaptics()
                    hapticEngine.hapticFeedbackLight()
                }
            
            Text("sooooooooooooooooooooooooooooooooooooooooooooooooooooooooo long text")
            
            Text("This is some longer text that is limited to 2 lines maximum, so anything more than that will cause the text to clip.")
                .lineLimit(2)
            
            Text("This is some longer text that is limited to a specific range of lines, so anything more than 2 lines will cause the text to clip.")
                .lineLimit(1...2)
            
            Text("If you need an exact line limit – meaning “this text should have exactly 6 lines of height, not more and not less”, you should use the `reservesSpace` parameter like this")
                .lineLimit(6, reservesSpace: true)
            
            Text("This is an extremely long string of text that will never fit even the widest of iOS devices even if the user has their Dynamic Type setting as small as is possible, so in theory it should definitely demonstrate truncationMode(.head).")
                .lineLimit(1)
                .truncationMode(.head)
            
            Text("This is an extremely long string of text that will never fit even the widest of iOS devices even if the user has their Dynamic Type setting as small as is possible, so in theory it should definitely demonstrate truncationMode(.middle).")
                .lineLimit(1)
                .truncationMode(.middle)
            
            Text("This is truncationMode(.tail). an extremely long string of text that will never fit even the widest of iOS devices even if the user has their Dynamic Type setting as small as is possible, so in theory it should definitely demonstrate.")
                .lineLimit(1)
                .truncationMode(.tail)
        }
    }
}

struct TextLengthSection_Previews: PreviewProvider {
    static var previews: some View {
        TextCatalog_Length()
    }
}
