//
//  CustomFontManager.swift
//  BiteWallet
//
//  Created by 조성주 on 2/1/25.
//

import SwiftUI

final class CustomFontManager {
    static let shared = CustomFontManager()
    
    private init() {}
    
    func registerFonts() {
        let fontFiles = [
            ("WantedSans-Regular", "ttf"),
            ("WantedSans-Medium", "ttf"),
            ("WantedSans-SemiBold", "ttf"),
            ("WantedSans-Bold", "ttf"),
            ("Urbanist-Semibold", "ttf")
        ]
        
        fontFiles.forEach { (fontName, extension) in
            // 먼저 폰트가 이미 등록되어 있는지 확인
            if let existingFont = CTFontCopyPostScriptName(CTFontCreateWithName(fontName as CFString, 12, nil)) as String? {
                print("ℹ️ Font already registered: \(fontName)")
                return
            }
            
            guard let fontURL = Bundle.main.url(forResource: fontName,
                                              withExtension: `extension`),
                  let fontDataProvider = CGDataProvider(url: fontURL as CFURL),
                  let font = CGFont(fontDataProvider) else {
                print("⚠️ Failed to load font: \(fontName)")
                return
            }
            
            var error: Unmanaged<CFError>?
            if !CTFontManagerRegisterGraphicsFont(font, &error) {
                if let err = error?.takeRetainedValue() {
                    let errorDescription = CFErrorCopyDescription(err)
                    print("⚠️ Error registering font: \(errorDescription)")
                }
            } else {
                print("✅ Successfully registered font: \(fontName)")
            }
        }
    }
    
    func font(type: CustomFontType, size: CGFloat) -> Font {
        return Font.custom(type.fontName, size: size)
    }
}
