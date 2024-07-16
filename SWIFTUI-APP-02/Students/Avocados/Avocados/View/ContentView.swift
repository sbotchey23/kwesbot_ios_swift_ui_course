//
//  ContentView.swift
//  Avocados
//
//  Created by Stephen Kwesi Botchey on 17/04/2024.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    var headers: [Header] = headersData
    var facts: [Fact] = factsData
    var recipes: [Recipe] = recipesData
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                
                // MARK: HEADER
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(headers) { item in
                            HeaderView(header: item)
                        } //: LOOP
                    } //: HSTACK
                } //: SCROLLVIEW
                
                // MARK: - DISHES
                Text("Avocado Dishes")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                DishesView()
                    .frame(maxWidth: 640)
                
                // MARK: - AVOCADO FACTS
                Text("Avocado Facts")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 60) {
                        ForEach(facts) { item in
                            FactsView(facts: item)
                        } //: LOOP
                    } //: HSTACK
                    .padding(.vertical)
                    .padding(.leading, 60)
                    .padding(.trailing, 20)
                } //: SCROLL
                
                // MARK: - RECIPE CARDS
                Text("Avocado Recipes")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                VStack(alignment: .center, spacing: 20) {
                    ForEach(recipes) { item in
                        RecipeCardView(recipe: item)
                    } //: LOOP
                } //: VSTACK
                .frame(maxWidth: 640)
                .padding(.horizontal)
                
                // MARK: FOOTER
                VStack(alignment: .center, spacing: 20) {
                    Text("All about avocados".capitalized)
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    Text("Everything you wanted to know about avocados but were afraid to ask.")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundStyle(Color.gray)
                        .frame(minHeight: 60)
                } //: VSTACK
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
            } //: VSTACK

        } //: SCROLLVIEW
        .ignoresSafeArea(.all)
    }
}

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.title, design: .serif))
            .foregroundStyle(Color("ColorGreenAdaptive"))
            .padding(8)
    }
}
// MARK: - PREVIEW
#Preview {
    ContentView(headers: headersData, facts: factsData, recipes: recipesData)
}
