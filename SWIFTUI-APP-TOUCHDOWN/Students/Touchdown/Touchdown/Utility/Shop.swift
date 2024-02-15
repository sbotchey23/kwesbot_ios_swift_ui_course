//
//  Shop.swift
//  Touchdown
//
//  Created by Stephen Kwesi Botchey on 13/02/2024.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectProduct: Product? = nil
}
