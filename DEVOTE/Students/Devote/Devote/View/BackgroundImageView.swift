//
//  BackgroundImageView.swift
//  Devote
//
//  Created by Kwesi A Botchey on 25/02/2024.
//

import SwiftUI

struct BackgroundImageView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        Image("rocket")
            .antialiased(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
            .resizable()
            .scaledToFill()
            .ignoresSafeArea(.all)
        
    }
}

// MARK: - PREVIEW
#Preview {
    BackgroundImageView()
}
