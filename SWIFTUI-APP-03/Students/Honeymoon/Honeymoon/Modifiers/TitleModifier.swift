//
//  TitleModifier.swift
//  Honeymoon
//
//  Created by Kwesi A Botchey on 29/10/2024.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundStyle(Color.pink)
    }
}
