//
//  BiteWalletApp.swift
//  BiteWallet
//
//  Created by 조성주 on 2/1/25.
//

import SwiftUI

@main
struct BiteWalletApp: App {
    init(){
        CustomFontManager.shared.registerFonts()
        #if DEBUG
        CustomFontManager.shared.validateFonts()
        #endif
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
