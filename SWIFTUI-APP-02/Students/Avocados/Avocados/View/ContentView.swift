//
//  ContentView.swift
//  Avocados
//
//  Created by Stephen Kwesi Botchey on 17/04/2024.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    var headers: [Header] = headersData
    
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                
                // MARK: HEADER
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(headers) { item in
                            HeaderView(header: item)
                        } //: LOOP
                    } //: HSTACK
                } //: SCROLLVIEW
                
                
                // MARK: FOOTER
                
                VStack(alignment: .center, spacing: 20) {
                    Text("All about avocados".capitalized)
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundStyle(Color("ColorGreenAdaptive"))
                    .padding(8)
                    
                    Text("Everything you wanted to know about avocados but were afraid to ask.")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundStyle(Color.gray)
                } //: VSTACK
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
            } //: VSTACK

        } //: SCROLLVIEW
        .ignoresSafeArea(.all)
    }
}
// MARK: - PREVIEW
#Preview {
    ContentView(headers: headersData)
}
