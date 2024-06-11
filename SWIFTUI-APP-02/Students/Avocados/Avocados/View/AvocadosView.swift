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
            Text("Avocados")
            
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
