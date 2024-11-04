//
//  InfoView.swift
//  Honeymoon
//
//  Created by Kwesi A Botchey on 29/10/2024.
//

import SwiftUI

struct InfoView: View {
    // MARK: - PROPERTIES
    @Environment(\.dismiss) var dismiss
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                HeaderComponent()
                
                Spacer(minLength: 10)
                
                Text("App Info")
                    .fontWeight(.black)
                    .modifier(TitleModifier())
                
                AppInfoView()
                
                Text("Credits")
                    .fontWeight(.black)
                    .modifier(TitleModifier())
                
                CreditsView()
                
                Spacer(minLength: 10)
                
                Button(action: {
                    // ACTION
                    //print("Button tapped")
                    self.dismiss()
                }) {
                    Text("Continue".uppercased())
                        .modifier(ButtonModifier())
                } //: BUTTON
                
                
            } //:VSTACK
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(.top, 15)
            .padding(.bottom, 25)
            .padding(.horizontal, 25)
        } //:SCROLLVIEW
    }
}

// MARK: - PREVIEW
#Preview {
    InfoView()
}

// MARK: - SUBVIEWS
struct AppInfoView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            RowAppInfoView(ItemOne: "Application", ItemTwo: "Honeymoon")
            RowAppInfoView(ItemOne: "Compatibility", ItemTwo: "iPhone, iPad")
            RowAppInfoView(ItemOne: "Developer", ItemTwo: "Kwesbot Ltd.")
            RowAppInfoView(ItemOne: "Designer", ItemTwo: "Kwesbot Ltd.")
            RowAppInfoView(ItemOne: "Website", ItemTwo: "kwesbotenterprise.com")
            RowAppInfoView(ItemOne: "Version", ItemTwo: "1.0.0")
        } //:VSTACK
    }
}

struct RowAppInfoView: View {
    // MARK: - PROPERTIES
    var ItemOne: String
    var ItemTwo: String
    
    var body: some View {
        VStack {
            HStack {
                Text(ItemOne).foregroundStyle(Color.gray)
                Spacer()
                Text(ItemTwo)
            } //:HSTACK
            Divider()
            
        } //:VSTACK
    }
}

struct CreditsView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Text("Photos").foregroundStyle(Color.gray)
                Spacer()
                Text("Unsplash")
            } //:HSTACK
            Divider()
            
            Text("Photographers").foregroundStyle(Color.gray)
            
            Text("Shifaaz Shamoon (Maldives), Grillot Edouard (France), Evan Wise (Greece), Christoph Schulz (United Arab Emirates), Andrew Coelho (USA), Damiano Baschiera (Italy), Daniel Olah (Hungary), Andrzej Rusinowski (Poland), Lucas Miguel (Slovenia), Florencia Potter (Spain), Ian Simmonds (USA), Ian Keefe (Canada), Denys Nevozhai (Thailand), David Köhler (Italy), Andre Benz (USA), Alexandre Chambon (South Korea), Roberto Nickson (Mexico), Ajit Paul Abraham (UK), Jeremy Bishop (USA), Davi Costa (Brazil), Liam Pozz (Australia)")
                .multilineTextAlignment(.leading)
                .font(.footnote)
            
        } //:VSTACK
    }
}
