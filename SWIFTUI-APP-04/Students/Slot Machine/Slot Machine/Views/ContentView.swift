//
//  ContentView.swift
//  Slot Machine
//
//  Created by Kwesi A Botchey on 30/07/2024.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            // MARK: - BACKGROUND
            LinearGradient(gradient: Gradient(colors: [Color("ColorPink"), Color("ColorPurple")]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea(.all)
            
            // MARK: - INTERFACE
            VStack(alignment: .center, spacing: 5) {
                
                // MARK: - HEADER
                LogoView()
                
                // MARK: - SCORE
                // MARK: - SLOT MACHINE
                // MARK: - FOOTER
                
            } //: VSTACK
            .padding()
            .frame(maxWidth: 720)
            
            // MARK: - POPUP
            
            
        } //: ZSTACK
    }
}

// MARK: - PREVIEW

#Preview {
    ContentView()
}
