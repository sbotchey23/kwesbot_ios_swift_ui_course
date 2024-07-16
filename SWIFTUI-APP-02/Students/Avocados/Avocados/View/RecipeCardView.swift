//
//  RecipeCardView.swift
//  Avocados
//
//  Created by Kwesi A Botchey on 05/07/2024.
//

import SwiftUI

struct RecipeCardView: View {
    // MARK: - PROPERTIES
    var recipe: Recipe
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            // CARD IMAGE
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .overlay(
                    HStack {
                        
                        Spacer()
                        
                        VStack {
                            Image(systemName: "bookmark")
                                .font(Font.title.weight(.light))
                                .foregroundStyle(Color.white)
                                .imageScale(.small)
                            .shadow(color: Color("ColorBlackTransparentLight"), radius: 2, x: 0, y: 0)
                            .padding(.trailing, 20)
                            .padding(.top, 22)
                            
                            Spacer()
                            
                        } //: VSTACK
                    } //: HSTACK
                )
            VStack(alignment: .leading, spacing: 12) {
                //TITLE
                Text(recipe.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundStyle(Color("ColorGreenMedium"))
                    .lineLimit(1)
                
                // HEADLINE
                Text(recipe.headline)
                    .font(.system(.body, design: .serif))
                    .foregroundStyle(Color.gray)
                    .italic()
                
                // RATING
                RecipeRatingView(recipe: recipe)
                
                // COOKING
               RecipeCookingView(recipe: recipe)
                
            } //: VSTACK
            .padding()
            .padding(.bottom, 12)
            
        } //: VSTACK
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 0)
    }
}

// MARK: - PREVIEW
#Preview {
    RecipeCardView(recipe: recipesData[0])
        .previewLayout(.sizeThatFits)
}
