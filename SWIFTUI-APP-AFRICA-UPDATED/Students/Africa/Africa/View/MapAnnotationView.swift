//
//  MapAnnotationView.swift
//  Africa
//
//  Created by Kwesi A Botchey on 04/01/2024.
//

import SwiftUI

struct MapAnnotationView: View {
    // MARK: - PROPERTIES
    
    let location: NationalParkLocation
    @State private var animation: Double = 0.0
    
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.accentColor)
                .frame(width: 54, height: 54, alignment: .center)
            
            Circle()
                .stroke(Color.accentColor)
                .frame(width: 52, height: 52, alignment: .center)
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1 - animation)
            
            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48, alignment: .center)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
        } //: ZSTACK
        .onAppear{
            withAnimation(Animation.easeOut(duration: 2).repeatForever(autoreverses: false)) {
                animation = 1
            }
        }
    }
}

// MARK: - PREVIEW

#Preview(traits: .sizeThatFitsLayout){
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")

    return MapAnnotationView(location: locations[0])
        .padding()
}
