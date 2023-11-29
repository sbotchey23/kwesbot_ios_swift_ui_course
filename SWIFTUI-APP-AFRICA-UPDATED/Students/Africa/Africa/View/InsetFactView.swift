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
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            } //: TABVIEW
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        } //: GROUPBOX
    }
}

// MARK: - PREVIEW

#Preview(traits: .sizeThatFitsLayout) {
    @State var animals: [Animal] = Bundle.main.decode("animals.json")
    
    return InsetFactView(animal: animals[0])
        .padding()
}
