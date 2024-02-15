//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Kwesi A Botchey on 26/01/2024.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
