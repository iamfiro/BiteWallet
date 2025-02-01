//
//  CustomFontManager.swift
//  BiteWallet
//
//  Created by 조성주 on 2/1/25.
//

final class CustomFontManager {
    static let shared = CustomFontManager()
    private init() {}
    
    func registerFonts() { ... }
    func registerCustomFont(name: String) { ... }
    private func registerFontFiles(fontNames: [String]) { ... }
    func font(type: CustomFontType, size: CGFloat) -> Font { ... }
}
