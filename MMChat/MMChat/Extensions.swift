//
//  Extensions.swift
//  MMChat
//
//  Created by Kyaw Thant Zin(George) on 8/27/24.
//

import Foundation
import SwiftUI

//extensions for adding rounded corners to specific corners
extension View {
    func cornerRadius( _ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius,corners: corners))
    }
}

// custom rounded corners shape for cornerRadius extension above
struct RoundedCorner : Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
