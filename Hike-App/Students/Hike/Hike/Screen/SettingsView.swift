//
//  SettingsView.swift
//  Hike
//
//  Created by Kwesi A Botchey on 15/08/2023.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List {
        // MARK: - SECTION: HEADER
        Section {
            HStack{
                Spacer()
                Image(systemName: "laurel.leading")
                    .font(.system(size: 80, weight: .black))
                
                VStack(spacing: -10) {
                    Text("Hike")
                        .font(.system(size: 66, weight: .black))
                    Text("Editors' Choice")
                        .fontWeight(.medium)
                }
                
                Image(systemName: "laurel.trailing")
                    .font(.system(size: 80, weight: .black))
                Spacer()
            }
            .foregroundStyle(
                LinearGradient(
                colors: [
                    .customGreenLight,
                    .customGreenMedium,
                    .customGreenDark],
                startPoint: .top,
                endPoint: .bottom
            )
        )
        .padding(.top, 8)
        
            VStack(spacing: 8){
                Text("Where can you find \nperfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    
                Text("The hike which looks gorgeous in photos but is even better once you are actually there. The hike that you hope to do again someday. \nFind the best day hikes in the app.")
                        .font(.footnote)
                        .italic()
                
                Text("Dust off the boots, it's time for a walk.")
                    .fontWeight(.heavy)
                    .foregroundColor(.customGreenMedium)
            }
            .multilineTextAlignment(.center)
            .padding(.bottom, 16)
            .frame(maxWidth: .infinity)

        } //: HEADER
        .listRowSeparator(.hidden)
        
            
        // MARK: - SECTION: ICONS
        
        // MARK: - SECTION: ABOUT
            Section(
            header: Text("About the app"),
            footer: HStack{
                Spacer()
                Text("Copyright © All rights reserved")
                Spacer()
            }
                .padding(.vertical, 8)
            ) {
                // 1. BASIC LABELED CONTENT
                // LabeledContent("Application", value: "Hike")
                
                // 2. ADVANCED LABELED CONTENT
                
            } //: SECTION
        } //: LIST
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
