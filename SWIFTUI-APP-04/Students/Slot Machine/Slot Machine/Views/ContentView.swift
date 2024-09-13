//
//  ContentView.swift
//  Slot Machine
//
//  Created by Kwesi A Botchey on 30/07/2024.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            // MARK: - BACKGROUND
            LinearGradient(gradient: Gradient(colors: [Color("ColorPink"), Color("ColorPurple")]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea(.all)
            
            // MARK: - INTERFACE
            VStack(alignment: .center, spacing: 5) {
                
                // MARK: - HEADER
                LogoView()
                    .padding(.top, 15)
                
                Spacer()
                
                // MARK: - SCORE
                HStack {
                    HStack(){
                        Text("Your\nCoins".uppercased())
                            .scoreLabelStyle()
                            .multilineTextAlignment(.trailing)
                        
                        Text("100")
                            .scoreNumberStyle()
                            .modifier(ScoreNumberModifier())
                        
                    } //: HSTACK
                    .modifier(ScoreContainerModifier())
                    
                    Spacer()
                    
                    HStack(){
                        Text("200")
                            .scoreNumberStyle()
                            .modifier(ScoreNumberModifier())
                        
                        Text("High\nScore".uppercased())
                            .scoreLabelStyle()
                            .multilineTextAlignment(.leading)
                
                    } //: HSTACK
                    .modifier(ScoreContainerModifier())
                    
                } //: HSTACK
                
                // MARK: - SLOT MACHINE
                // MARK: - FOOTER
                
                Spacer()
            } //: VSTACK
            
            // MARK: - BUTTONS
            .overlay(
                // RESET
                Button(action: {
                    print("Reset the game!")
                }, label: {
                    Image(systemName: "arrow.triangle.2.circlepath.circle")
                    })
                .modifier(ButtonModifier()),
                alignment: .topLeading
                )
            
            .overlay(
                // INFO
                Button(action: {
                    print("Info View")
                }, label: {
                    Image(systemName: "info.circle")
                    })
                .modifier(ButtonModifier()),
                alignment: .topTrailing
                )
            
                .padding()
                .frame(maxWidth: 720)
            
            // MARK: - POPUP
            
        } //: ZSTACK
    }
}

// MARK: - PREVIEW

#Preview {
    ContentView()
}
