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
                        .cornerRadius(20)
                    
                    // TITLE
                    Text(animal.name.uppercased())
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .padding(.vertical, 8)
                        .foregroundColor(.primary)
                        .background(Color.accentColor
                            .frame(height: 6)
                            .offset(y:24)
                        )
                    
                    // HEADLINE
                    Text(animal.headline)
                        .font(.headline)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.accentColor)
                        .padding(.horizontal)
                    
                    // GALLERY
                    Group {
                        HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wildrness in Pictures")
                        
                        InsetGalleryView(animal: animal)
                    }
                    
                    // FACTS
                    Group {
                        HeadingView(headingImage: "questionmark.circle", headingText: "Did you know?")
                    }
                    .padding(.horizontal)
                    
                    // DESCRIPTION

                    // MAP
                    
                    // LINK

                } //: VSTACK
                .navigationTitle("Learn about \(animal.name)")
                .navigationBarTitleDisplayMode(.inline)
            } //: SCROLLVIEW
        } //: NAVIGATIONSTACK
    }
}

    // MARK: - PREVIEW

#Preview (traits: .sizeThatFitsLayout) {
    @State var animals: [Animal] = Bundle.main.decode("animals.json")
    
    return AnimalDetailView(animal: animals[0])
        .padding()
}
