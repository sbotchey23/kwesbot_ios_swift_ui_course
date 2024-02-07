//
//  BrandItemView.swift
//  Touchdown
//
//  Created by Kwesi A Botchey on 07/02/2024.
//

import SwiftUI

struct BrandItemView: View {
    // MARK: - PROPERTIES
    let brand: Brand
    
    // MARK: - BODY
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding(3)
            .background(Color.white.cornerRadius(12))
            .background(RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1))
        
    }
}

// MARK: - PREVIEW
#Preview(traits: .sizeThatFitsLayout) {
    BrandItemView(brand: brands[0])
        .padding()
        .background(colorBackground)
}
