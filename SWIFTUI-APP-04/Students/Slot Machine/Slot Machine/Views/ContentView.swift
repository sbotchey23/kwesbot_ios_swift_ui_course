//
//  ContentView.swift
//  Slot Machine
//
//  Created by Kwesi A Botchey on 30/07/2024.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    let symbols = ["gfx-bell", "gfx-cherry", "gfx-coin", "gfx-grape", "gfx-seven", "gfx-strawberry"]
    
    @State private var highscore: Int = 0
    @State private var coins: Int = 100
    @State private var betAmount: Int = 10
    @State private var reels: Array = [0, 1, 2]
    @State private var showingInfoView: Bool = false
    @State private var isActiveBet10: Bool = true
    @State private var isActiveBet20: Bool = false
    @State private var showingModal: Bool = true
    
    // MARK: - FUNCTIONS
    
    //SPIN THE REELS
    func spinReels() {
        //reels[0] = Int.random(in: 0...symbols.count - 1)
        //reels[1] = Int.random(in: 0...symbols.count - 1)
        //reels[2] = Int.random(in: 0...symbols.count - 1)
        reels = reels.map({ _ in
            Int.random(in: 0...symbols.count - 1)
        })
    }
    
    // CHECK THE WINNING
    func checkWinning() {
        if reels[0] == reels[1] && reels[1] == reels[2] && reels[0] == reels[2]{
            // PLAYER WINS
            playerWins()
            
            // NEW HIGH SCORE
            if coins > highscore {
                newHighScore()
            }
        } else {
            // PLAYER LOSES
            playerLoses()
        }
    }
    
    func playerWins() {
        coins += betAmount * 10
    }
    
    func newHighScore() {
        highscore = coins
    }
    
    func playerLoses() {
        coins -= betAmount
    }
    
    func activateBet20() {
        betAmount = 20
        isActiveBet20 = true
        isActiveBet10 = false
    }
    
    func activateBet10() {
        betAmount = 10
        isActiveBet10 = true
        isActiveBet20 = false
    }
    
    // GAME IS OVER
    func isGameOver() {
        if coins <= 0 {
            //SHOW MODAL WINDOW
            showingModal = true
        }
    }
    
    
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
                        
                        Text("\(coins)")
                            .scoreNumberStyle()
                            .modifier(ScoreNumberModifier())
                        
                    } //: HSTACK
                    .modifier(ScoreContainerModifier())
                    
                    Spacer()
                    
                    HStack(){
                        Text("\(highscore)")
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
                        
                        Image(symbols[reels[0]])
                            .resizable()
                            .modifier(ImageModifier())
                    } //: ZSTACK
                    
                    HStack(alignment: .center, spacing: 0) {
                        // MARK: - REEL #2
                        ZStack {
                            ReelView()
                            
                            Image(symbols[reels[1]])
                                .resizable()
                                .modifier(ImageModifier())
                        } //: ZSTACK
                        
                        Spacer()
                        
                        // MARK: - REEL #3
                        ZStack {
                            ReelView()
                        
                            Image(symbols[reels[2]])
                                .resizable()
                                .modifier(ImageModifier())
                        } //: ZSTACK
                    } //: HSTACK
        
                    .frame(maxWidth: 500)
                    
                    // MARK: - SPIN BUTTON
                    Button(action: {
                        // SPIN THE REELS
                        self.spinReels()
                        
                        // CHECK WINNING
                        self.checkWinning()
                        
                        // CHECK GAME IS OVER
                        self.isGameOver()
                        
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
                            self.activateBet20()
                        }) {
                            Text("20")
                                .fontWeight(.heavy)
                                .foregroundStyle(isActiveBet20 ? Color("ColorYellow") : Color.white)
                                .modifier(BetNumberModifier())
                        } //: BUTTON
                        .modifier(BetCapsuleModifier())
                        
                        Image("gfx-casino-chips")
                            .resizable()
                            .opacity(isActiveBet20 ? 1 : 0)
                            .modifier(CasinoChipsModifier())
                        
                    } //: HSATCK
                    
                    // MARK: - BET 10
                    HStack(alignment: .center, spacing: 10) {
                        Image("gfx-casino-chips")
                            .resizable()
                            .opacity(isActiveBet10 ? 1 : 0)
                            .modifier(CasinoChipsModifier())
                        
                        Button(action: {
                            self.activateBet10()
                        }) {
                            Text("10")
                                .fontWeight(.heavy)
                                .foregroundStyle(isActiveBet10 ? Color("ColorYellow") : Color.white)
                                .modifier(BetNumberModifier())
                        } //: BUTTON
                        .modifier(BetCapsuleModifier())
                        
                        
                    } //: HSTACK
                    
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
                    self.showingInfoView = true
                }, label: {
                    Image(systemName: "info.circle")
                    })
                .modifier(ButtonModifier()),
                alignment: .topTrailing
                )
                .padding()
                .frame(maxWidth: 720)
                .blur(radius: $showingModal.wrappedValue ? 5 : 0, opaque: false)
            
            // MARK: - POPUP
            if $showingModal.wrappedValue {
                ZStack {
                    Color(UIColor(red: 0, green: 0, blue: 0, alpha: 0.7))
                        .ignoresSafeArea(.all)
                }
            }
            
        } //: ZSTACK
        .sheet(isPresented: $showingInfoView) {
            InfoView()
        }
        
    }
}

// MARK: - PREVIEW

#Preview {
    ContentView()
}
