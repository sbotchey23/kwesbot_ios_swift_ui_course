//
//  CardView.swift
//  Learn by Doing
//
//  Created by Stephen Kwesi Botchey on 04/04/2024.
//

import SwiftUI

struct CardView: View {
    // MARK: - PROPERTIES
    var card: Card
        
    // MARK: - BODY
    var body: some View {
        ZStack {
            Image(card.imageName)
            
            VStack {
                Text(card.title)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundStyle(Color.white)
                    .multilineTextAlignment(.center)
                
                Text(card.headline)
                    .fontWeight(.light)
                    .foregroundStyle(Color.white)
                    .italic()
            } //: VSTACK
            .offset(y: -215)
            
            Button(action: {
                print("Button was tapped!")
            }, label: {
                HStack {
                    Text(card.callToAction.uppercased())
                        .fontWeight(.heavy)
                        .foregroundStyle(Color.white)
                    .tint(Color.white)
                    
                    Image(systemName: "arrow.right.circle")
                        .font(Font.title.weight(.medium))
                        .tint(Color.white)
                } //: HSTACK
                .padding(.vertical, 10)
                .padding(.horizontal, 35)
                .background(LinearGradient(gradient: Gradient(colors: card.gradientColors), startPoint: .leading, endPoint: .trailing))
                .clipShape(Capsule())
                .shadow(color: Color("ClorShadow"), radius: 6, x: 0, y: 3)
            }) //: BUTTON
            .offset(y: 210)
        }
        .frame(width: 335, height: 545)
        .background(LinearGradient(gradient: Gradient(colors: card.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(16)
        .shadow(radius: 8)
    }
}

// MARK: - PREVIEW
#Preview(traits: .sizeThatFitsLayout) {
    return CardView(card: cardData[2])
}
