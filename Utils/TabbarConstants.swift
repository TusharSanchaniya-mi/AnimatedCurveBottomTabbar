//
//  TabbarConstants.swift
//  AnimatedBottomTabbar
//
//  Created by Mindinventory on 08/04/24.
//

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

public enum TabbarCurvePosition {
    case bottom
    case top
}

