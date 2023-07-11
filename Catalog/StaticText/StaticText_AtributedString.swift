//
//  StaticText_Advanced.swift
//  SwiftUICatalog
//
//  Created by 13an on 2023/07/11.
//

import SwiftUI

struct StaticText_AtributedString: View {
    var redText: AttributedString {
        var result = AttributedString("Red")
        result.font = .largeTitle
        result.foregroundColor = .white
        result.backgroundColor = .red
        return result
    }
    
    var blueText: AttributedString {
        var result = AttributedString("Blue")
        result.font = .largeTitle
        result.foregroundColor = .white
        result.backgroundColor = .blue
        return result
    }
    
    var underlineText: AttributedString {
            var result = AttributedString("underlineStyle")
            result.font = .largeTitle
            result.foregroundColor = .white
            result.backgroundColor = .black
            result.underlineStyle = Text.LineStyle(pattern: .solid, color: .white)
            return result
    }
    
    var upAndDownText: AttributedString {
            let string = "The letters go up and down"
            var result = AttributedString()
        
            for (index, letter) in string.enumerated() {
                var letterString = AttributedString(String(letter))
                letterString.baselineOffset = sin(Double(index)) * 5
                result += letterString
            }
        
            result.font = .largeTitle
            return result
    }
    
    var linkText: AttributedString {
            var result = AttributedString("Tap here")
            result.font = .largeTitle
            result.link = URL(string: "https://www.hackingwithswift.com")
            result.underlineStyle = Text.LineStyle(pattern: .solid, color: .blue)
            return result
    }
    
    var weekdayAndDateStyling: AttributedString {
            var result = Date.now.formatted(.dateTime.weekday(.wide).day().month(.wide).attributed)
            result.foregroundColor = .secondary

            let weekday = AttributeContainer.dateField(.weekday)
            let weekdayStyling = AttributeContainer.foregroundColor(.primary)
            result.replaceAttributes(weekday, with: weekdayStyling)

            return result
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            Text(redText + blueText)
            
            Text(underlineText)
            
            Text(upAndDownText)
            
            Text(linkText)
            
            Text(weekdayAndDateStyling)
        }
    }
}

struct StaticText_AtributedString_Previews: PreviewProvider {
    static var previews: some View {
        StaticText_AtributedString()
    }
}
