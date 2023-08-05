//
//  ContentView.swift
//  HelloWorld
//
//  Created by Kwesi A Botchey on 04/08/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "face.smiling")
                .imageScale(.large)
                .foregroundColor(.green)
            Text("Congratulations!")
                .foregroundColor(Color.orange)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
