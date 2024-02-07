//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Kwesi A Botchey on 04/02/2024.
//

import SwiftUI

struct CategoryGridView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: [], content: {
                Section(
                    header: SectionView(rotateClockwise: false),
                    footer: SectionView(rotateClockwise: true)
                ) {
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    }
                }
            }) //: HGRID
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        }) //: SCROLLVIEW
    }
}
// MARK: - PREVIEW
#Preview(traits: .sizeThatFitsLayout) {
    CategoryGridView()
        .padding()
        .background(colorBackground)
}
