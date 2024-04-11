import SwiftUI

struct TabItem {
    
    /// - Parameters:
    ///   - id: You have to provide an unique id to identify individual tab..
    var id: Int
    
    /// - Parameters:
    ///   - tabIcon: With this you can get an image to show.
    var tabIcon: String
    
    /// - Parameters:
    ///   - deSelectedTabIcon: With this you can get an image to show deselected tab
    var deSelectedTabIcon: String = ""
    
    /// - Parameters:
    ///   - selectedTabIconColor: Use to indicate and highlight selected tab with tint color
    var selectedTabIconColor: Color = Color.colorWithHexString(hexString: TabbarConstants.shared.selectedTabColor)
    
    /// - Parameters:
    ///   - unSelectedTabIconColor: Use to indicate and highlight unselected tab with tint color
    var unSelectedTabIconColor: Color = Color.colorWithHexString(hexString: TabbarConstants.shared.deSelectedTabColor)
}
