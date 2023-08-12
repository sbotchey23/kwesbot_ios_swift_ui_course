//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by Kwesi A Botchey on 11/08/2023.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                // Conditional Statement with Nil Coalescing
                // Condition ? A : B
                configuration.isPressed ?
                
                // Condition A: When the Button is pressed
                LinearGradient(colors: [
                    .customGrayMedium,
                    .customGrayLight],
                       startPoint: .top,
                       endPoint: .bottom
                )
                
                :
                    
                // Condition B: When the button is NOT pressed
                LinearGradient(colors: [
                    .customGrayLight,
                    .customGrayMedium],
                       startPoint: .top,
                       endPoint: .bottom
                )
            )
            .cornerRadius(40)
    }
}
