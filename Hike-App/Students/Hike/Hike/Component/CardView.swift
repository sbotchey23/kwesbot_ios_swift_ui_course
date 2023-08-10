//
//  CardView.swift
//  Hike
//
//  Created by Kwesi A Botchey on 07/08/2023.
//

import SwiftUI

struct CardView: View {
    var body: some View {
    // MARK: - CARD
        
        ZStack {
            CustomBackgroundView()
            VStack {
                // MARK: - HEADER
                
                // MARK: - MAIN CONTENT
                
                ZStack {
                    Circle()
                        .fill(
                            LinearGradient(
                                colors:[
                                    Color("ColorIndigoMedium"),
                                    Color("ColorSalmonLight")
                                    ],
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing))
                        .frame(width: 256, height: 256)
                    Image("image-1")
                        .resizable()
                        .scaledToFit()
                }
            }
        } //: CARD
        .frame(width: 320, height: 570)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
