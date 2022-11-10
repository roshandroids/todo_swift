//
//  Extensions.swift
//  todo_swift
//
//  Created by Roshan Shrestha on 08/11/2022.
//

import SwiftUI

extension Color{
    public static var mintGreen: Color {
           return Color(UIColor(red: 208/255, green: 237/255, blue:191/255, alpha: 1.0))
       }
       
       public static var midnightDark: Color {
           return Color(UIColor(red: 36/255, green: 40/255, blue: 44/255, alpha: 1.0))
       }
    
        public static var lightYellow: Color {
            return Color(UIColor(red: 255/255, green: 231/255, blue: 171/255, alpha: 1.0))
        }
        
        public static var lightPink: Color {
            return Color(UIColor(red: 250/255, green: 244/255, blue: 242/255, alpha: 1.0))
        }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}
struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
