//
//  HeaderView.swift
//  Notes Watch App
//
//  Created by Kwesi A Botchey on 01/04/2024.
//

import SwiftUI

struct HeaderView: View {
    // MARK: - PROPERTIES
    var title: String = ""
    
    // MARK: - BODY
    var body: some View {
        VStack {
            // TITLE
            if title != "" {
                Text(title.uppercased())
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundStyle(.accent)
            }
            
            // SEPARATOR
            
            HStack {
                Capsule()
                    .frame(height: 1)
                
                Image(systemName: "note.text")
                
                Capsule()
                    .frame(height: 1)
            } //: HSTACK
            .foregroundStyle(.accent)
            
        } //: VSTACK
    }
}

// MARK: - PREVIEW

#Preview {
    Group {
        HeaderView()
    }
}

#Preview {
    Group {
        HeaderView(title: "Credits")

    }
}
