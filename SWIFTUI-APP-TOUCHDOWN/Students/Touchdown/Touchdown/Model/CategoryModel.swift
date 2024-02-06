//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Kwesi A Botchey on 03/02/2024.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
