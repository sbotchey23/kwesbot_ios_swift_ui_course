//
//  BlankView.swift
//  Devote
//
//  Created by Kwesi A Botchey on 28/02/2024.
//

import SwiftUI

struct BlankView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Spacer()
        } //: VSATCK
        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(Color.black)
        .opacity(0.5)
        .ignoresSafeArea(.all)
    }
}

// MARK: - PREVIEW
#Preview {
    BlankView()
}
