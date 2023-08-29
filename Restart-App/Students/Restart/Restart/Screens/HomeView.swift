//
//  HomeView.swift
//  Restart
//
//  Created by Kwesi A Botchey on 24/08/2023.
//

import SwiftUI

struct HomeView: View {
    // MARK: - PROPERTY
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
    
    // MARK: - BODY
    
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Home view")
                .font(.largeTitle)
            
            Button(action:{
                isOnboardingViewActive = true
            }) {
                Text("Restart")
            }
        } //: VSTACK
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
