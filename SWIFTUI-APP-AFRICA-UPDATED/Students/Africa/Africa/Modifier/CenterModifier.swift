//
//  CenterModifier.swift
//  Africa
//
//  Created by Kwesi A Botchey on 26/01/2024.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
