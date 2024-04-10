import SwiftUI

struct TabItem {
    var id: Int
    var tabIcon: String
    var deSelectedTabIcon: String = ""
    var selectedTabIconColor: Color = Color.colorWithHexString(hexString: TabbarConstants.shared.selectedTabColor)
    var unSelectedTabIconColor: Color = Color.colorWithHexString(hexString: TabbarConstants.shared.deSelectedTabColor)
}
