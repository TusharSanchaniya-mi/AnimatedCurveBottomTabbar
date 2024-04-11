import SwiftUI

struct TabbarItem: View {

    /// - Parameters:
    ///   - currentTab: Indicates current active tab and can set pre selected tab as well.
    @Binding var currentTab: TabItem
    
    /// - Parameters:
    ///   - xPosition: Shows the curve position view on selcted tab,
    @Binding var xPosition: CGFloat
    
    /// - Parameters:
    ///   - currentSelectedTab: Indicates current active tab and can set pre selected tab as well.
    @Binding var currentSelectedTab: TabItem
    
    /// - Parameters:
    ///   - tabbarCurvePosition: User can set curve position either on Top or Bottom.
    ///   - Values: `top` & `bottom`,
    ///   - Default: `bottom`
    @Binding var tabbarCurvePosition: TabbarCurvePosition
    
    /// - Parameters:
    ///   - iconSize: Providing size of tabbar icons.
    @Binding var iconSize: CGSize
    
    @Binding var geoProxy: GeometryProxy?
    
    /// - Parameters:
    ///   - tabbarHeight: Indicates a height of the bottom tab
    ///   - MinimumSize: `35`.
    @Binding var tabbarHeight: CGFloat
    
    var body: some View {
        
        GeometryReader(content: { geometry -> AnyView in
            
            geoProxy = geometry
            
            let tabDeSelectedIcon = currentTab.deSelectedTabIcon.isEmpty == false
            let isTopPosition = tabbarCurvePosition == .top
            
            return AnyView(Button(action: {
                
                withAnimation {
                    currentSelectedTab = currentTab
                }
                
                withAnimation(.spring(response: 0.5, dampingFraction: 0.55, blendDuration: 0.5)) {
                    xPosition = (geometry.frame(in: .global).midX)
                    
                }
            }, label: {
                if tabDeSelectedIcon {
                    Image(currentTab.id == currentSelectedTab.id ? currentTab.tabIcon : currentTab.deSelectedTabIcon)
                        .resizable()
                        .scaledToFit()
                        .frame(width: iconSize.width, height: iconSize.height)
                        .offset(y: currentTab.id == currentSelectedTab.id ? isTopPosition ? 8 : -10 : 0)
                        .onAppear {
                            xPosition = (geometry.frame(in: .global).midX)
                        }
                }
                else {
                    Image(currentTab.tabIcon)
                        .resizable()
                        .renderingMode(.template)
                        .scaledToFit()
                        .frame(width: iconSize.width, height: iconSize.height)
                        .foregroundStyle(currentTab.id == currentSelectedTab.id ? currentTab.selectedTabIconColor : currentTab.unSelectedTabIconColor)
                        .offset(y: currentTab.id == currentSelectedTab.id ? isTopPosition ? 8 : -10 : 0)
                        .onAppear {
                            xPosition = (geometry.frame(in: .global).midX)
                        }
                }
                
            })
            .frame(maxWidth: .infinity, maxHeight: .infinity))
        })
        .frame(height: tabbarHeight)
    }
}


