//
//  ContentView.swift
//  Notes Watch App
//
//  Created by Kwesi A Botchey on 22/03/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "note.text")
                .imageScale(.large)
                .foregroundStyle(.accent)
            Text("Add note")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
