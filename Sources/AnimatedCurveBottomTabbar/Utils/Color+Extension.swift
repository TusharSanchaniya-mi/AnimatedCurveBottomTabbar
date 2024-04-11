import Foundation
import SwiftUI


extension Color {
    
    public static func colorWithHexString(hexString: String, withAlpha: CGFloat = 1) -> Color {
        var formattedHexString = hexString.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        
        if formattedHexString.hasPrefix("#") {
            formattedHexString.remove(at: formattedHexString.startIndex)
        }
        
        if formattedHexString.count != 6 {
            return Color.black
        }
        
        guard formattedHexString.count == 6, let rgbValue = UInt64(formattedHexString, radix: 16) else {
            return Color.black
        }
        
        let red = Double((rgbValue & 0xFF0000) >> 16) / 255.0
        let green = Double((rgbValue & 0x00FF00) >> 8) / 255.0
        let blue = Double(rgbValue & 0x0000FF) / 255.0
        
        return Color(red: red, green: green, blue: blue)
    }
}
