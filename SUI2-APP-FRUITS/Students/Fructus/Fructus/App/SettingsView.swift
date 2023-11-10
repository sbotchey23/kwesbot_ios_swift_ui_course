//
//  SettingsView.swift
//  Fructus
//
//  Created by Kwesi A Botchey on 09/11/2023.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES -
    
    @Environment(\.presentationMode) var presentationMode
    
    // MARK: - BODY -
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: - SECTION 1
                    GroupBox(
                        label:
                            HStack {
                                Text("Fructus".uppercased())
                            } //: HSTACK
                    ) {
                        Text("Ah wah dis!")
                    }
                    
                    // MARK: - SECTION 2
                    
                    // MARK: - SECTION 3

                } //: VSTACK
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "xmark")
                    }
                )
                .padding()
            } //: SCROLLVIEW
        } //:NAVIGATIONVIEW
    }
}

// MARK: - PREVIEW -

#Preview {
    SettingsView()
        .preferredColorScheme(.dark)
}
