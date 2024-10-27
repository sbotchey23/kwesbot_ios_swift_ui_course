//
//  ContentView.swift
//  Honeymoon
//
//  Created by Kwesi A Botchey on 21/10/2024.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        VStack {
            HeaderView()
            
            Spacer()
            
            CardView(honeymoon: honeymoonData[3])
            // FIXME: Add padding to the cards later on
                .padding()
            
            Spacer()
            
            FooterView()
            
        } //: VSTACK
    }
}
// MARK: - PREVIEW
#Preview {
    ContentView()
}
