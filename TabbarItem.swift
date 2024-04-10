import SwiftUI

struct TabbarItem: View {
    
    @Binding var currentTab: TabItem
    @Binding var xPosition: CGFloat
    @Binding var currentSelectedTab: TabItem
    @Binding var tabbarCurvePosition: TabbarCurvePosition
    @Binding var iconSize: CGSize
    @Binding var geoProxy: GeometryProxy?
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


