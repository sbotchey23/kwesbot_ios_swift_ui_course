//
//  FactsView.swift
//  Avocados
//
//  Created by Kwesi A Botchey on 24/06/2024.
//

import SwiftUI

struct FactsView: View {
    var body: some View {
        Text("It’s little wonder there are so many health benefits when a single serve of avocado (1/4 or 50g) boasts healthy fats, fibre, folate, niacin, vitamins C, B5, E & K, potassium and antioxidants.")
            .padding()
            .frame(width: 300, height: 135, alignment: .center)
            .background(LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenLight")]), startPoint: .leading, endPoint: .trailing))
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .lineLimit(6)
            .multilineTextAlignment(.leading)
            .font(.footnote)
            .foregroundStyle(Color.white)
    }
}

#Preview {
    FactsView()
        .previewLayout(.fixed(width: 400, height: 220))
}
