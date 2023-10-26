//
//  PageModel.swift
//  Pinch
//
//  Created by Kwesi A Botchey on 26/10/2023.
//

import Foundation

struct Page: Identifiable {
    let id: Int
    let imageName: String
}

extension Page {
    var thumbnailName: String {
        return "thumb-" + imageName
    }
}
