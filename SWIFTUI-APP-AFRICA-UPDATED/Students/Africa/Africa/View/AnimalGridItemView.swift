//
//  AnimalGridItemView.swift
//  Africa
//
//  Created by Kwesi A Botchey on 24/01/2024.
//

import SwiftUI

struct AnimalGridItemView: View {
    // MARK: - PROPERTIES
    let animal: Animal
    
    // MARK: - BODY
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

// MARK: - PREVIEW

#Preview(traits: .sizeThatFitsLayout) {
    @State var animals: [Animal] = Bundle.main.decode("animals.json")
    
    return AnimalGridItemView(animal: animals[0])
        .padding()
}
