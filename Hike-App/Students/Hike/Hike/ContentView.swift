//
//  ContentView.swift
//  Hike
//
//  Created by Kwesi A Botchey on 06/08/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors:[
                            Color("ColorIndigoMedium"),
                            Color("ColorSalmonLight")
                            ],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing)
                )
                .frame(width: 256, height: 256)
            Image("image-1")
                .resizable()
                .scaledToFit()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
