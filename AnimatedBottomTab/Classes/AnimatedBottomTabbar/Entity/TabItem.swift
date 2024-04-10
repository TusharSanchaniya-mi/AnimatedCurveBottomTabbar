//
//  TabItem.swift
//  AnimatedBottomTabbar
//
//  Created by Mindinventory on 08/04/24.
//

import SwiftUI

struct TabItem {
    var id: Int
    var tabIcon: String
    var deSelectedTabIcon: String = ""
    var selectedTabIconColor: Color = Color.colorWithHexString(hexString: TabbarConstants.shared.selectedTabColor)
    var unSelectedTabIconColor: Color = Color.colorWithHexString(hexString: TabbarConstants.shared.deSelectedTabColor)
}
