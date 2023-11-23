//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Kwesi A Botchey on 21/11/2023.
//

import SwiftUI

struct AnimalDetailView: View {
    // MARK: - PROPERTIES
    let animal: Animal
    
    // MARK: - BODY
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    // HERO IMAGE
                    Image(animal.image)
                        .resizable()
                        .scaledToFit()
                    
                    // TITLE

                    // HEADLINE
                    
                    // GALLERY

                    // FACTS
                    
                    // DESCRIPTION

                    // MAP
                    
                    // LINK

                } //: VSTACK
                .navigationTitle("Learn about \(animal.name)")
                .navigationBarTitleDisplayMode(.inline)
            } //: SCROLLVIEW
        } //: NAVIGATIONSTACK
//        .padding(0)
    }
}

    // MARK: - PREVIEW

#Preview (traits: .sizeThatFitsLayout) {
    @State var animals: [Animal] = Bundle.main.decode("animals.json")
    
    return AnimalDetailView(animal: animals[0])
        .padding()
}
