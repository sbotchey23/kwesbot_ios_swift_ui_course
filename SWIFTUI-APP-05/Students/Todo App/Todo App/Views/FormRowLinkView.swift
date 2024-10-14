//
//  FormRowLinkView.swift
//  Todo App
//
//  Created by Kwesi A Botchey on 11/10/2024.
//

import SwiftUI

struct FormRowLinkView: View {
    // MARK: - PROPERTIES
    var icon: String
    var color: Color
    var text: String
    var link: String
    
    // MARK: - BODY
    var body: some View {
        HStack {
            ZStack {
                RoundedRectangle(cornerRadius: 8, style: .continuous)
                    .fill(color)
                Image(systemName: icon)
                    .imageScale(.large)
                    .foregroundStyle(Color.white)
            } //: ZSTACK
            .frame(width: 36, height: 36, alignment: .center)
            
            Text(text)
                .foregroundStyle(Color.gray)
            
                Spacer()
            
            Button(action: {
                // OPEN A LINK
                guard let url =  URL(string: self.link), UIApplication.shared.canOpenURL(url) else { return
                }
                UIApplication.shared.open(url as URL)
            }) {
                Image(systemName: "chevron.right")
                    .font(.system(size: 14, weight: .semibold, design: .rounded))
            } //: BUTTON
            .tint(Color(.systemGray2))
        } //: HSTACK
    }
}

// MARK: - PREVIEW
#Preview(traits: .fixedLayout(width: 375, height: 60)) {
    FormRowLinkView(icon: "globe", color: Color.pink, text: "Website", link: "https://www.dataroma.com/")
        .padding()
}
