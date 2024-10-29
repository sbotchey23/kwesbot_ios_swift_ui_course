//
//  ButtonModifier.swift
//  Honeymoon
//
//  Created by Kwesi A Botchey on 29/10/2024.
//

import SwiftUI

struct ButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .padding()
            .frame(minWidth: 0, maxWidth: .infinity)
            .background(Capsule().fill(Color.pink))
            .foregroundStyle(Color.white)
    }
}

