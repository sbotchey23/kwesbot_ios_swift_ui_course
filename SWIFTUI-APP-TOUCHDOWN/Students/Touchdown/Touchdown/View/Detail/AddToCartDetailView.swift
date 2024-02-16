//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Kwesi A Botchey on 11/02/2024.
//

import SwiftUI

struct AddToCartDetailView: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop

    // MARK: - BODY
    var body: some View {
        Button(action: {
            feedback.impactOccurred()
        }, label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        }) //: BUTTON
        .padding()
        .background(Color(
            red: shop.selectedProduct?.red ?? sampleProduct.red,
            green: shop.selectedProduct?.green ?? sampleProduct.green,
            blue: shop.selectedProduct?.blue ?? sampleProduct.blue))
        .clipShape(Capsule())
    }
}

// MARK: - PREVIEW
#Preview(traits: .sizeThatFitsLayout) {
    AddToCartDetailView()
        .environmentObject(Shop())
        .padding()
}
