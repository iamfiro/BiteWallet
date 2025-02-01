//
//  VailidateCustomFont.swift
//  BiteWallet
//
//  Created by 조성주 on 2/1/25.
//

import SwiftUI

#if DEBUG
extension CustomFontManager {
    func validateFonts() {
        let fontNames = [
            "WantedSans-Regular",
            "WantedSans-Medium",
            "WantedSans-SemiBold",
            "WantedSans-Bold"
        ]
        
        fontNames.forEach { fontName in
            if let bundleURL = Bundle.main.url(forResource: fontName, withExtension: "ttf") {
                print("✅ Font file found: \(fontName)")
            } else {
                print("❌ Font file not found: \(fontName)")
            }
        }
    }
}
#endif
