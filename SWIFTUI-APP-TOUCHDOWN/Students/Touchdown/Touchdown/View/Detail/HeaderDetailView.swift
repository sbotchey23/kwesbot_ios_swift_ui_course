//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Stephen Kwesi Botchey on 08/02/2024.
//

import SwiftUI

struct HeaderDetailView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            Text("Protective Gear")
            
            Text(sampleProduct.name)
        }) //: VSTACK
        foregroundColor(.white)
    }
}

// MARK: - PREVIEW
#Preview(traits: .sizeThatFitsLayout) {
    HeaderDetailView()
        .padding()
        .background(Color.gray)
}
