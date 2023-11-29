//
//  VideoModel.swift
//  Africa
//
//  Created by Kwesi A Botchey on 27/11/2023.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed Property
    var thumbnail: String {
        "video-\(id)"
    }
}
