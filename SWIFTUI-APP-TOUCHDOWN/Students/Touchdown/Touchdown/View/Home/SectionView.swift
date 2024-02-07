//
//  SectionView.swift
//  Touchdown
//
//  Created by Kwesi A Botchey on 06/02/2024.
//

import SwiftUI

struct SectionView: View {
    // MARK: - PROPERTIES
    @State var rotateClockwise: Bool
    
    // MARK: - BODY
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
            
            Spacer()
        } //: VSTACK
        .background(Color.gray.cornerRadius(12))
        .frame(width: 85)
    }
}

// MARK: - PREVIEW
#Preview(traits: .fixedLayout(width: 120, height: 240)) {
    SectionView(rotateClockwise: false)
        .padding()
        .background(colorBackground)
}
