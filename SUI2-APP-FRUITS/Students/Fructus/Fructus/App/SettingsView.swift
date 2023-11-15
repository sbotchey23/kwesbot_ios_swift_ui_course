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
                            SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ) {
                        Divider()
                            .padding(.vertical, 4)
                        
                        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins and much more.")
                                .font(.footnote)
                        } //:HSTACK
                    } //: GROUPBOX
                    
                    // MARK: - SECTION 2
                    
                    
                    // MARK: - SECTION 3
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ) {
                        SettingsRowView(name: "Developer", content: "Kwesbot Ent.")
                        SettingsRowView(name: "Designer", content: "K A Botchey")
                        SettingsRowView(name: "Compatibility", content: "iOS 14+")
                        SettingsRowView(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                        SettingsRowView(name: "Twitter X", linkLabel: "@ghanaianprincek", linkDestination: "twitter.com/GhanaianPrinceK")
                        SettingsRowView(name: "SwiftUI", content: "5.0")
                        SettingsRowView(name: "App Version", content: "1.1.0")
                        
                    } //: GROUPBOX

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
