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
    
    @State private var fadeIn: Bool = false
    @State private var moveDownward: Bool = false
    @State private var moveUpward: Bool = false
    @State private var showAlert: Bool = false
    
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    
        
    // MARK: - BODY
    var body: some View {
        ZStack {
            Image(card.imageName)
                .opacity(fadeIn ? 1.0 : 0.0)
            
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
            .offset(y: moveDownward ? -218 : -300)
            
            Button(action: {
                print("Button was tapped!")
                
                playSound(sound: "sound-chime", type: "mp3")
                self.hapticImpact.impactOccurred()
                self.showAlert.toggle()
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
            .offset(y: moveUpward ? 210 : 300)
        } //: ZSTACK
        .frame(width: 335, height: 545)
        .background(LinearGradient(gradient: Gradient(colors: card.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(16)
        .shadow(radius: 8)
        .onAppear() {
            withAnimation(.easeIn(duration: 2.2)) {
                self.fadeIn.toggle()
            }
            withAnimation(.easeIn(duration: 1.0)) {
                self.moveDownward.toggle()
                self.moveUpward.toggle()
            }
        }
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text(card.title),
                message: Text(card.message),
                dismissButton: .default(Text("Done"))
                
            )
        } //: ALERT
    }
}

// MARK: - PREVIEW
#Preview(traits: .sizeThatFitsLayout) {
    return CardView(card: cardData[1])
}
