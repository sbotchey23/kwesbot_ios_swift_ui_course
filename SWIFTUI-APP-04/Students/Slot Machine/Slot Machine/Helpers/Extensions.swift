//
//  Extensions.swift
//  Slot Machine
//
//  Created by Kwesi A Botchey on 13/09/2024.
//

import SwiftUI

extension Text {
    func scoreLabelStyle() -> Text{
        self
            .foregroundStyle(Color.white)
            .font(.system(size: 10, weight: .bold, design: .rounded))
    }
    
    func scoreNumberStyle() -> Text{
        self
            .foregroundStyle(Color.white)
            .font(.system(.title, design: .rounded))
            .fontWeight(.heavy)
    }
}
