//
//  SettingsView.swift
//  Todo App
//
//  Created by Kwesi A Botchey on 10/10/2024.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    @Environment(\.dismiss) var dismiss
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 0) {
                // MARK: - FORM
                Form {
                    
                    // MARK: - SECTION 3
                    Section(header: Text("Follow us on social media")) {
                        FormRowLinkView(icon: "globe", color: Color.pink, text: "Website", link: "https://developer.apple.com/ios/planning/")
                        FormRowLinkView(icon: "link", color: Color.blue, text: "Twitter / X", link: "https://www.youtube.com/watch?v=8Xg7E9shq0U")
                        FormRowLinkView(icon: "play.rectangle", color: Color.green, text: "Courses", link: "https://www.youtube.com/watch?v=8Xg7E9shq0U")
                        
                    } //: SECTION 3
                    .padding(.vertical, 3)
                    
                    // MARK: - SECTION 4
                    Section(header: Text("About the application")) {
                        FormRowStaticView(icon: "gear", firstText: "Application", secondText: "Todo")
                        FormRowStaticView(icon: "checkmark.seal", firstText: "Compatibility", secondText: "iPhone, iPad")
                        FormRowStaticView(icon: "keyboard", firstText: "Developer", secondText: "Kwesi Botchey")
                        FormRowStaticView(icon: "paintbrush", firstText: "Designer", secondText: "Kwesbot")
                        FormRowStaticView(icon: "flag", firstText: "Version", secondText: "1.0.0")
                        
                    } //: SECTION 4
                    .padding(.vertical, 3)
                    
                } //: FORM
                .listStyle(GroupedListStyle())
                .environment(\.horizontalSizeClass, .regular)
                
                // MARK: - FOOTER
                Text("Copyright © All rights reserved. \nBetter Apps ♡ Less Code.")
                    .multilineTextAlignment(.center)
                    .font(.footnote)
                    .padding(.top, 6)
                    .padding(.bottom, 8)
                    .foregroundStyle(Color.secondary)
                
            } //: VSTACK
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Dismiss", systemImage: "xmark") {
                        dismiss()
                    }
                }
            } //: TOOLBAR
            .navigationBarTitle(("Settings"), displayMode: .inline)
            .background(Color("ColorBackground"))
            
        } //: NAVIGATION
    }
}
// MARK: - PROPERTIES
#Preview {
    SettingsView()
}
