//
//  View+Extension.swift
//  AnimatedBottomTabbar
//
//  Created by Mindinventory on 09/04/24.
//

import Foundation
import SwiftUI

extension View {
    
    func `if`<Content: View>(_ conditional: Bool, content: (Self) -> Content) -> some View {
         if conditional {
             return AnyView(content(self))
         } else {
             return AnyView(self)
         }
     }
}
