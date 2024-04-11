import SwiftUI

public struct AnimatedCurveBottomTabbar<Content: View>: View {
    
    /// - Usage:
    /// Allow to make default selection based on requirements
    @Binding public var selectedTab: TabItem
    
    /// - Parameters:
    ///   - id: A uniq value to Identify with selection.
    ///   - tabIcon: An icon which shows up in bottom tab bar.
    ///   - deSelectedTabIcon: An icon which shows up after deselection in bottom tab bar.
    ///   - selectedTabIconColor: Give a tint color to the icons when its selected..
    ///   - unSelectedTabIconColor: Give a tint color to the icons when its not selected..
    @Binding public var items: [TabItem]
    
    @State public var tabbarHeight: CGFloat
    
    /// - Parameters:
    ///   - circleBGColor: Color to give dot background color.
    @State public var circleBGColor: Color
    
    /// - Parameters:
    ///   - tabBGColor: Color  to give tabbar background color.
    @State public var tabBGColor: Color
    
    /// - Parameters:
    ///   - width: A fixed width for the resulting view. If `width` is `nil`,
    ///     Default frame size will ne applied
    ///   - height: A fixed height for the resulting view. If `height` is `nil`,
    ///     Default frame size will ne applied
    @State public var iconSize: CGSize
    
    /// ![Tabbar position either in bottom or on top curve notch)
    ///
    /// - Parameters:
    ///   - top: The curve view draws on top edges of tabbar. `Default`
    ///   - bottom: The curve view draws on bottom edges of tabbar.
    @State public var tabbarCurvePosition: TabbarCurvePosition
    
    @State fileprivate var xPosition: CGFloat = 15.0
    @State fileprivate var geometryProxy: GeometryProxy? = nil

    fileprivate let dotCircleSize: CGSize = CGSize(width: 10.0, height: 10.0)
    
    var selectedTabView: AnyView
    
    public init(selectedTab: Binding<TabItem>,
         items: Binding<[TabItem]>,
         tabbarCurvePosition: TabbarCurvePosition = TabbarCurvePosition.bottom,
         iconSize: CGSize = CGSize(width: 30, height: 30),
         tabbarHeight: CGFloat = 35.0,
         circleBGColor: Color = Color.colorWithHexString(hexString: "#A481D7"),
         tabBGColor: Color = Color.colorWithHexString(hexString: "#7329DF"),
         @ViewBuilder selectedViewCompletion: () -> Content) {
        
        self._selectedTab = selectedTab
        self._items = items
        
        self.tabbarHeight = tabbarHeight < 35.0 ? 35.0 : tabbarHeight
        self.circleBGColor = circleBGColor
        self.tabBGColor = tabBGColor
        self.iconSize = iconSize
        self.tabbarCurvePosition = tabbarCurvePosition
        self.selectedTabView = AnyView(selectedViewCompletion())
    }
    
    public var body: some View {
        VStack {
            ScrollView(showsIndicators: false) {
                selectedTabView
            }
            .onAppear {
                UIScrollView.appearance().bounces = false
            }
            .onDisappear {
                UIScrollView.appearance().bounces = true
            }
            HStack(spacing: 0) {
                ForEach($items, id: \.id) { item in
                    TabbarItem(currentTab: item, xPosition: $xPosition, currentSelectedTab: $selectedTab, tabbarCurvePosition: $tabbarCurvePosition, iconSize: $iconSize, geoProxy: $geometryProxy, tabbarHeight: $tabbarHeight)
                }
            }
            .padding()
            .if(tabbarCurvePosition == .top, content: {
                $0.background(tabBGColor.clipShape(TopTabCurve(tabXPoint: xPosition - 10.0))
                    .overlay(alignment: .bottomLeading, content: {
                        Circle()
                            .fill(circleBGColor)
                            .frame(width: dotCircleSize.width, height: dotCircleSize.height)
                            .fixedSize()
                            .offset(x: xPosition - 15.0, y: -(tabbarHeight + (dotCircleSize.height * 2)))
                        
                    }))
            })
            .if(tabbarCurvePosition == .bottom, content: {
                $0.background(tabBGColor.clipShape(BottomTabCurve(tabXPoint: xPosition - 10.0))
                    .overlay(alignment: .bottomLeading, content: {
                        Circle()
                            .fill(circleBGColor)
                            .frame(width: dotCircleSize.width, height: dotCircleSize.height)
                            .fixedSize()
                            .offset(x: xPosition - 15.0)
                        
                    }))
            })
            .cornerRadius(25.0)
            .padding(.horizontal, 10.0)
            
        }
    }
}


