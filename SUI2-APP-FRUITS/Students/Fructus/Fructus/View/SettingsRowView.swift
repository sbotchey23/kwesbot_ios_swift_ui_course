//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Kwesi A Botchey on 14/11/2023.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: - PROPERTIES -
    
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    // MARK: - BODY -
    
    var body: some View {
        VStack {
            Divider()
                .padding(.vertical, 4)
            
            HStack {
                Text(name)
                    .foregroundColor(Color.gray)
                
                Spacer()
                
                if (content != nil) {
                    Text(content!)
                } else if (linkLabel != nil && linkDestination != nil) {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(Color.pink)
                }
                else {
                    /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                }
            } //: HSTACK
//            .padding(.vertical, 3)
        } //: VSTACK
    }
}

// MARK: - PREVIEW -

#Preview {
    SettingsRowView(name: "Developer", content: "Kwesbot Ent.")
        .previewLayout(.fixed(width: 375, height: 60))
        .padding()
}

#Preview {
    SettingsRowView(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        .previewLayout(.fixed(width: 375, height: 60))
        .padding()
}
