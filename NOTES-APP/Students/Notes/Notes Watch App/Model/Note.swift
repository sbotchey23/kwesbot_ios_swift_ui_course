//
//  Note.swift
//  Notes Watch App
//
//  Created by Kwesi A Botchey on 22/03/2024.
//

import Foundation

struct Note: Identifiable, Codable {
    let id: UUID
    let text: String
}
