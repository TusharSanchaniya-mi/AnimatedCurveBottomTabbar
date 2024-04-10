import SwiftUI

struct TopTabCurve: Shape {
    
    var tabXPoint: CGFloat
    
    func path(in rect: CGRect) -> Path {
        return Path { path in
            
            let width = rect.width
            let height = rect.height
            
            path.move(to: CGPoint(x: width, y: 0))
            path.addLine(to: CGPoint(x: width, y: height))
            path.addLine(to: CGPoint(x: 0, y: height))
            path.addLine(to: CGPoint(x: 0, y: 0))

            let midX = tabXPoint // rect.width / 2
            
            path.move(to: CGPoint(x: midX - 40, y: 0))

            let toPoint = CGPoint(x: midX, y: 22)
            let cPoint1 = CGPoint(x: midX - 15, y: 0)
            let cPoint2 = CGPoint(x: midX - 15, y: 22)
            
            let toPoint1 = CGPoint(x: midX + 40, y: 0)
            let cPoint3 = CGPoint(x: midX + 15, y: 22)
            let cPoint4 = CGPoint(x: midX + 15, y: 0)
            
            path.addCurve(to: toPoint, control1: cPoint1, control2: cPoint2)
            path.addCurve(to: toPoint1, control1: cPoint3, control2: cPoint4)
            
        }
    }
}



