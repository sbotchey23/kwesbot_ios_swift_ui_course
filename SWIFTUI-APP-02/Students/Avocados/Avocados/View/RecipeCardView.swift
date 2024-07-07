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
        VStack {
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
                // HEADLINE
                // RATES
                // COOKING
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
