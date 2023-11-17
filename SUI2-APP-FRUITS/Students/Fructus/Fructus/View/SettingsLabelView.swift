//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Kwesi A Botchey on 11/11/2023.
//

import SwiftUI

struct SettingsLabelView: View {
    // MARK: - PROPERTIES -
    var labelText: String
    var labelImage: String
    
    // MARK: - BODY -
    
    var body: some View {
        HStack {
            Text(labelText.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        
        } //: HSTACK
    }
}

// MARK: - PREVIEW -
#Preview {
    SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
        .previewLayout(.sizeThatFits)
        .padding()
}
