//
//  LogoView.swift
//  Touchdown
//
//  Created by Kwesi A Botchey on 29/01/2024.
//

import SwiftUI

struct LogoView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        HStack(spacing: 4) {
            Text("Touch".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
            
            Image("logo-black")
            
            Text("Touch".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
        }
    }
}
// MARK: - PREVIEW
#Preview(traits: .sizeThatFitsLayout) {
    LogoView()
        .padding()
}
