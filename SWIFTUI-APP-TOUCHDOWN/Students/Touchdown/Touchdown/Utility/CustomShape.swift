//
//  CustomShape.swift
//  Touchdown
//
//  Created by Kwesi A Botchey on 11/02/2024.
//

import SwiftUI

struct CustomShape: Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 35, height: 35))
        
        return Path(path.cgPath)
    }
}

// MARK: - PREVIEW
#Preview(traits: .fixedLayout(width: 428, height: 120)) {
    CustomShape()
        .padding()
}
