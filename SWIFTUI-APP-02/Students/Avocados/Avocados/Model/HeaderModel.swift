//
//  HeaderModel.swift
//  Avocados
//
//  Created by Kwesi A Botchey on 20/06/2024.
//

import SwiftUI

// MARK: - HEADER MODEL

struct Header: Identifiable {
    var id = UUID()
    var image: String
    var headline: String
    var subheadline: String
}
