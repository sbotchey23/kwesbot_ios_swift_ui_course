//
//  RecipeRatingView.swift
//  Avocados
//
//  Created by Kwesi A Botchey on 11/07/2024.
//

import SwiftUI

struct RecipeRatingView: View {
    // MARK: - PROPERTIES
    var recipe: Recipe
    
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 5) {
            ForEach(1...(recipe.rating), id: \.self) { _ in
                Image(systemName:"star.fill")
                    .font(.body)
                .foregroundStyle(Color.yellow)
            } //: LOOP
        } //: HSTACK
    }
}

// MARK: - PREVIEW
#Preview {
    RecipeRatingView(recipe: recipesData[0])
        .previewLayout(.fixed(width: 320, height: 60))
}
