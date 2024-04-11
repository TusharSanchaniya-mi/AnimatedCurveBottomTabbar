import SwiftUI

public struct TabItem {
    
    /// - Parameters:
    ///   - id: You have to provide an unique id to identify individual tab..
    public var id: Int
    
    /// - Parameters:
    ///   - tabIcon: With this you can get an image to show.
    public var tabIcon: String
    
    /// - Parameters:
    ///   - deSelectedTabIcon: With this you can get an image to show deselected tab
    public var deSelectedTabIcon: String
    
    /// - Parameters:
    ///   - selectedTabIconColor: Use to indicate and highlight selected tab with tint color
    public var selectedTabIconColor: Color
    
    /// - Parameters:
    ///   - unSelectedTabIconColor: Use to indicate and highlight unselected tab with tint color
    public var unSelectedTabIconColor: Color

    public init(id: Int, tabIcon: String, deSelectedTabIcon: String = "", selectedTabIconColor: Color = Color.colorWithHexString(hexString: "#FFFFFF"), unSelectedTabIconColor: Color = Color.colorWithHexString(hexString: "#A481D7")) {
        self.id = id
        self.tabIcon = tabIcon
        self.deSelectedTabIcon = deSelectedTabIcon
        self.selectedTabIconColor = selectedTabIconColor
        self.unSelectedTabIconColor = unSelectedTabIconColor
    }
}
