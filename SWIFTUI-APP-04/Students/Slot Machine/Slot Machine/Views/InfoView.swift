//
//  InfoView.swift
//  Slot Machine
//
//  Created by Kwesi A Botchey on 19/09/2024.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            LogoView()
            
            Spacer()
            
            Form {
                Section(header: Text("About the application")) {
                    FormRowView(firstItem: "Application", secondItem: "Slot Machine")
                    FormRowView(firstItem: "Platforms", secondItem: "iPhone, iPad, Mac")
                    FormRowView(firstItem: "Developer", secondItem: "Kwesbot")
                    FormRowView(firstItem: "Designer", secondItem: "Kwesbot")
                    FormRowView(firstItem: "Music", secondItem: "Botchey")
                    FormRowView(firstItem: "Website", secondItem: "kwesbotltd.com")
                    FormRowView(firstItem: "Copyright", secondItem: "© 2024 All rights reserved")
                    FormRowView(firstItem: "Version", secondItem: "1.0.0")
                } //: SECTION
                
            } //: FORM
            .font(.system(.body, design: .rounded))
            
        } //: VSTACK
        padding(.top, 40)
    }
}

struct FormRowView: View {
    var firstItem: String
    var secondItem: String
    
    var body: some View {
        HStack {
            Text(firstItem)
                .foregroundStyle(Color.gray)
            Spacer()
            Text(secondItem)
        }
    }
}

#Preview {
    InfoView()
}
