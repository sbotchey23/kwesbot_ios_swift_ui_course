//
//  CoverImageView.swift
//  Africa
//
//  Created by Kwesi A Botchey on 19/11/2023.
//

import SwiftUI

struct CoverImageView: View {
    // MARK: - PROPERTIES
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    
    // MARK: - BODY

    var body: some View {
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            } //: LOOP
        } //: TABVIEW
        .tabViewStyle(.page)
    }
}

// MARK: - PREVIEW

#Preview (traits: .sizeThatFitsLayout) {
    CoverImageView()
        .previewLayout(.fixed(width: 400, height: 300))
}
