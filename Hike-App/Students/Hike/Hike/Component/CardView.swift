//
//  CardView.swift
//  Hike
//
//  Created by Kwesi A Botchey on 07/08/2023.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        Image("image-1")
            .resizable()
            .scaledToFit()
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
