//
//  ThemeSettings.swift
//  Todo App
//
//  Created by Kwesi A Botchey on 17/10/2024.
//

import SwiftUI

// MARK: - THEME CLASS

class ThemeSettings: ObservableObject {
    @Published var themeSettings: Int = UserDefaults.standard.integer(forKey: "Theme") {
        didSet {
            UserDefaults.standard.set(self.themeSettings, forKey: "Theme")
        }
    }
    private init() {}
    public static let shared = ThemeSettings()
}
