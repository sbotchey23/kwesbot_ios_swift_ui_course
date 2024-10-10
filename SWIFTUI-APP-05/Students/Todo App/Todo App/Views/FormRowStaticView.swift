//
//  FormRowStaticView.swift
//  Todo App
//
//  Created by Kwesi A Botchey on 10/10/2024.
//

import SwiftUI

struct FormRowStaticView: View {
    // MARK: - PROPERTIES
    var icon: String
    var firstText: String
    var secondText: String
    
    // MARK: - BODY
    var body: some View {
        HStack {
            ZStack {
                RoundedRectangle(cornerRadius: 8, style: .continuous)
                    .fill(Color.gray)
                Image(systemName: icon)
                    .foregroundStyle(Color.white)
            } //: ZSTACK
            .frame(width: 36, height: 36, alignment: .center)
            
            Text(firstText)
                .foregroundStyle(Color.gray)
            Spacer()
            Text(secondText)
                
        }
    }
}

// MARK: - PREVIEW
#Preview(traits: .fixedLayout(width: 375, height: 60)) {
    FormRowStaticView(icon: "gear", firstText: "Application", secondText: "Todo")
        .padding()
}
