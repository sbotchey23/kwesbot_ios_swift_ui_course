//
//  CardView.swift
//  Learn by Doing
//
//  Created by Stephen Kwesi Botchey on 04/04/2024.
//

import SwiftUI

struct CardView: View {
    // MARK: - PROPERTIES
    var gradient: [Color] = [Color("Color01"), Color("Color02")]
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            Image("developer-no1")
            
            VStack {
                Text("SwiftUI")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundStyle(Color.white)
                    .multilineTextAlignment(.center)
                
                Text("Better apps. Less code.")
                    .fontWeight(.light)
                    .foregroundStyle(Color.white)
                    .italic()
            } //: VSTACK
            .offset(y: -215)
            
            Button(action: {
                print("Button was tapped!")
            }, label: {
                Text("Learn".uppercased())
                    .fontWeight(.heavy)
                    .foregroundStyle(Color.white)
                    .tint(Color.white)
            }) //: BUTTON
            .offset(y: 210)
        }
        .frame(width: 335, height: 545)
        .background(LinearGradient(gradient: Gradient(colors: gradient), startPoint: .top, endPoint: .bottom))
        .cornerRadius(16)
        .shadow(radius: 8)
    }
}

// MARK: - PREVIEW
#Preview(traits: .sizeThatFitsLayout) {
    CardView()
}
