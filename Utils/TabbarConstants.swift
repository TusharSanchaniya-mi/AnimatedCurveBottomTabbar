import Foundation
import SwiftUI


struct TabbarConstants {
    static let shared = TabbarConstants()
    let selectedTabColor = "#FFFFFF"
    let deSelectedTabColor = "#A481D7"
    let backgroundColor = "#7329DF"
    let circleColor = "#A481D7"
    let iconSize: CGSize = CGSize(width: 30, height: 30)
}

@frozen public enum TabbarCurvePosition {
    
    /// The bottom of the edge.
    case bottom
    
    /// - Parameters:
    /// The top of the edge.
    case top
}

