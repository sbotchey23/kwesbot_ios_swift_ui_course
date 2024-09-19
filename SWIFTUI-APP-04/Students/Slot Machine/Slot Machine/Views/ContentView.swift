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
                VStack(alignment: .center, spacing: 0){
                    // MARK: - REEL #1
                    ZStack {
                        ReelView()
                        
                        Image("gfx-bell")
                            .resizable()
                            .modifier(ImageModifier())
                    } //: ZSTACK
                    
                    HStack(alignment: .center, spacing: 0) {
                        // MARK: - REEL #2
                        ZStack {
                            ReelView()
                            
                            Image("gfx-seven")
                                .resizable()
                                .modifier(ImageModifier())
                        } //: ZSTACK
                        
                        Spacer()
                        
                        // MARK: - REEL #3
                        ZStack {
                            ReelView()
                        
                            Image("gfx-cherry")
                                .resizable()
                                .modifier(ImageModifier())
                        } //: ZSTACK
                    } //: HSTACK
        
                    .frame(maxWidth: 500)
                    
                    // MARK: - SPIN BUTTON
                    Button(action: {
                        print("Spin the reels")
                    }) {
                        Image("gfx-spin")
                            .renderingMode(.original)
                            .resizable()
                            .modifier(ImageModifier())
                    } //: BUTTON
                    
                } //: VSTACK - SLOT MACHINE
                .layoutPriority(2)
                
                // MARK: - FOOTER
                Spacer()
                
                HStack{
                    // MARK: - BET 20
                    HStack(alignment: .center, spacing: 10) {
                        Button(action: {
                            print("Bet 20 coins")
                        }) {
                            Text("20")
                                .fontWeight(.heavy)
                                .foregroundStyle(Color.white)
                                .modifier(BetNumberModifier())
                        } //: BUTTON
                        .modifier(BetCapsuleModifier())
                        
                        Image("gfx-casino-chips")
                            .resizable()
                            .opacity(0)
                            .modifier(CasinoChipsModifier())
                        
                    } //: HSATCK
                    
                    // MARK: - BET 10
                    HStack(alignment: .center, spacing: 10) {
                        Image("gfx-casino-chips")
                            .resizable()
                            .opacity(1)
                            .modifier(CasinoChipsModifier())
                        
                        Button(action: {
                            print("Bet 10 coins")
                        }) {
                            Text("10")
                                .fontWeight(.heavy)
                                .foregroundStyle(Color.yellow)
                                .modifier(BetNumberModifier())
                        } //: BUTTON
                        .modifier(BetCapsuleModifier())
                        
                        
                    } //: HSATCK
                    
                } //: HSTACK
                
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
