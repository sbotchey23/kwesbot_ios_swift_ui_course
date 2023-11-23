//
//  InsetFactView.swift
//  Africa
//
//  Created by Kwesi A Botchey on 23/11/2023.
//

import SwiftUI

struct InsetFactView: View {
    // MARK: - PROPERTIES
    let animal: Animal
    
    // MARK: - BODY
    
    var body: some View {
        GroupBox {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
    }
}

// MARK: - PREVIEW

#Preview(traits: .sizeThatFitsLayout) {
    @State var animals: [Animal] = Bundle.main.decode("animals.json")
    
    return InsetFactView(animal: animals[0])
        .padding()
}
