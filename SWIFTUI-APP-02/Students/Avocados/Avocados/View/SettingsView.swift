//
//  SettingsView.swift
//  Avocados
//
//  Created by Kwesi A Botchey on 29/05/2024.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    @State private var enableNotifications: Bool = true
    @State private var backgroundRefresh: Bool = false
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            
            // HEADER
            VStack(alignment: .center, spacing: 5) {
                
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 4)
                
                Text("Avocados".uppercased())
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                .foregroundStyle(Color("ColorGreenAdaptive"))
                
            } //:VSTACK
            .padding()
            
            Form{
                // MARK: - SECTION #1
                Section(header: Text("General Settings")) {
                    
                    Toggle(isOn: $enableNotifications) {
                        Text("Enable Notifications")
                    } //:TOGGLE
                    
                    Toggle(isOn: $backgroundRefresh) {
                        Text("Background Refresh")
                    } //:TOGGLE
                    
                }//: SECTION
                
                // MARK: - SECTION #2
                Section(header: Text("Application")) {
                    
                    if enableNotifications {
                        HStack {
                            Text("Product").foregroundStyle(Color.gray)
                            Spacer()
                            Text("Avocados Recipe")
                        } //: HSTACK
                        
                        HStack {
                            Text("Compatibility").foregroundStyle(Color.gray)
                            Spacer()
                            Text("iPhone & iPad")
                        } //: HSTACK
                       
                        HStack {
                            Text("Developer").foregroundStyle(Color.gray)
                            Spacer()
                            Text("Kwesbot Ltd.")
                        } //: HSTACK
                        
                        HStack {
                            Text("Designer").foregroundStyle(Color.gray)
                            Spacer()
                            Text("Kwesi Asare")
                        } //: HSTACK
                        
                        HStack {
                            Text("Website").foregroundStyle(Color.gray)
                            Spacer()
                            Text("swiftuimasterclass.com")
                        } //: HSTACK
                        
                        HStack {
                            Text("Version").foregroundStyle(Color.gray)
                            Spacer()
                            Text("1.0.0")
                        } //: HSTACK
                        
                    } else {
                        HStack {
                            Text("Personal Message").foregroundStyle(Color.gray)
                            Spacer()
                            Text("😁 Happy Coding 😁")
                        } //: HSTACK
                        
                    } //: CONDITIONAL
                    
                } //: SECTION
                        
            } //: FORM
            
        } //: VSTACK
        .frame(maxWidth: 640)
    }
}
// MARK: - PREVIEW
#Preview {
    SettingsView()
}
