//
//  SettingsView.swift
//  Todo App
//
//  Created by Kwesi A Botchey on 10/10/2024.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 0) {
                // MARK: - FORM
                Form {
                    // MARK: - SECTION 4
                    Section(header: Text("About the application")) {
                        
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
            .navigationBarTitle(("Settings"), displayMode: .inline)
            .background(Color("ColorBackground"))
            
        } //: NAVIGATION
    }
}
// MARK: - PROPERTIES
#Preview {
    SettingsView()
}
