//
//  AvocadosView.swift
//  Avocados
//
//  Created by Kwesi A Botchey on 29/05/2024.
//

import SwiftUI

struct AvocadosView: View {
    var body: some View {
        VStack {
            Spacer()
            
            Image("avocado")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 240, height: 240)
                .shadow(color: Color("ColorBlackTransparentDark"), radius: 12, x: 0, y: 8)
            
            VStack {
                Text("Avocados")
                    .font(.system(size: 42, weight: .bold, design: .serif))
                    .foregroundStyle(Color.white)
                    .padding()
                .shadow(color: Color("ColorBlackTransparentDark"), radius: 4, x: 0, y: 4)
                
                Text("Creamy, green, and full of nutrients! Avocado is a powerhouse ingredient at any meal. Enjoy these handpicked avocado recipes for breakfast, lunch, dinner & more!")
            } //: VSTACK
            
            Spacer()
            
        } //: VSTACK
        .background(
            Image("background")
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
        )
        .ignoresSafeArea(.all)
    }
}

#Preview {
    AvocadosView()
}
