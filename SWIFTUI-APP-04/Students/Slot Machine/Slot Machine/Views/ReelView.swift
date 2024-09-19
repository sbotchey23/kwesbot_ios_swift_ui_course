//
//  ReelView.swift
//  Slot Machine
//
//  Created by Kwesi A Botchey on 17/09/2024.
//

import SwiftUI

struct ReelView: View {
    var body: some View {
        Image("gfx-reel")
            .resizable()
            .modifier(ImageModifier())
    }
}

#Preview(traits: .fixedLayout(width: 220, height: 220)) {
    ReelView()
    
}
