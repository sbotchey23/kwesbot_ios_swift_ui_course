//
//  ContentView.swift
//  Honeymoon
//
//  Created by Kwesi A Botchey on 21/10/2024.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    @State var showAlert: Bool = false
    @State var showGuide: Bool = false
    
    // MARK: - BODY
    var body: some View {
        VStack {
            HeaderView(showGuideView: $showGuide)
            
            Spacer()
            
            CardView(honeymoon: honeymoonData[3])
            // FIXME: Add padding to the cards later on
                .padding()
            
            Spacer()
            
            FooterView(showBookingAlert: $showAlert)
            
        } //: VSTACK
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Booking Success"), message: Text("Wishing a lovely and most precious of times together for the amazing couple!"), dismissButton: .default(Text("Happy Honeymoon!"))
            )
        }
    }
}
// MARK: - PREVIEW
#Preview {
    ContentView()
}
