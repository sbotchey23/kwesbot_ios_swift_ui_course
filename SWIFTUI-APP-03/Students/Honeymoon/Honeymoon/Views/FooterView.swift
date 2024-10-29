//
//  FooterView.swift
//  Honeymoon
//
//  Created by Kwesi A Botchey on 27/10/2024.
//

import SwiftUI

struct FooterView: View {
    // MARK: - PROPERTIES
    @Binding var showBookingAlert: Bool
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Image(systemName: "xmark.circle")
                .font(.system(size: 42, weight: .light))
            
            Spacer()
            
            Button(action: {
                //ACTION
                //print("Success")
                self.showBookingAlert.toggle()
            }) {
                Text("Book Destination".uppercased())
                    .font(.system(.subheadline, design: .rounded))
                    .fontWeight(.heavy)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 12)
                    .tint(Color.pink)
                    .background(
                        Capsule().stroke(Color.pink, lineWidth: 2)
                    )
            } //: BUTTON
            
            Spacer()
            
            Image(systemName: "heart.circle")
                .font(.system(size: 42, weight: .light))
                
        } //: HSTACK
        .padding()
    }
}

// MARK: - PREVIEW
#Preview(traits: .fixedLayout(width: 375, height: 80)) {
    @Previewable @State var showAlert: Bool = false
    
    FooterView(showBookingAlert: $showAlert)
}
