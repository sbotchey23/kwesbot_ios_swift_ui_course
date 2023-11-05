//
//  FruitRowView.swift
//  Fructus
//
//  Created by Kwesi A Botchey on 03/11/2023.
//

import SwiftUI

struct FruitRowView: View {
    // MARK: - PROPERTIES
    var fruit: Fruit
    
    // MARK: - BODY
    
    var body: some View {
        HStack {
            
        } //: HSTACK
    }
}

// MARK: - PREVIEW

#Preview {
    FruitRowView(fruit: fruitsData[0])
        .previewLayout(.sizeThatFits)
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        .padding()
}
