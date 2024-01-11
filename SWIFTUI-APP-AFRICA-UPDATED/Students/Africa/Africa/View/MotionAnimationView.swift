//
//  MotionAnimationView.swift
//  Africa
//
//  Created by Kwesi A Botchey on 05/01/2024.
//

import SwiftUI

struct MotionAnimationView: View {
    // MARK: - PROPERTIES
    
    @State private var randomCir
    
    // MARK: - BODY
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Circle()
                    .foregroundColor(.gray)
                    .opacity(0.15)
                    .frame(width: 256, height: 256, alignment: .center)
                    .position(
                        x: geometry.size.width / 2,
                        y: geometry.size.height / 2
                    )
                
                Text("Width: \(Int(geometry.size.width)) Height: \(Int(geometry.size.height))")
            } //: ZSTACK
        } //: GEROMETRY
    }
}

// MARK: - PREVIEW

#Preview {
    MotionAnimationView()
}
