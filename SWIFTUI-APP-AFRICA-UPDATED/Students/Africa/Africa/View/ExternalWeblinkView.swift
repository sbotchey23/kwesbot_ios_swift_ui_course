//
//  ExternalWeblinkView.swift
//  Africa
//
//  Created by Kwesi A Botchey on 26/11/2023.
//

import SwiftUI

struct ExternalWeblinkView: View {
    // MARK: - PROPERTIES
    let animal: Animal
    
    // MARK: - BODY
    
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                
                Spacer()
                
                Group {
                    Link(animal.name, destination: URL(string: animal.link) ?? URL(string: "https://wikipedia.org")!)
                    
                    Image(systemName: "arrow.up.right.square")
                }
                .foregroundColor(.accentColor)
            } //: HSTACK
        } //: GROUPBOX
    }
}

// MARK: - PREVIEW

#Preview(traits: .sizeThatFitsLayout) {
    @State var animals: [Animal] = Bundle.main.decode("animals.json")
    
    return ExternalWeblinkView(animal: animals[0])
        .padding()
}
