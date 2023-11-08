//
//  ContentView.swift
//  Fructus
//
//  Created by Kwesi A Botchey on 27/10/2023.
//

import SwiftUI

struct ContentView: View {
// MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData
    
// MARK: - BODY
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
        }//: NAVIGATION
    }
}

// MARK: - PREVIEW

#Preview {
    ContentView(fruits: fruitsData)
}
