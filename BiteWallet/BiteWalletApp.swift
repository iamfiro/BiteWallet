//
//  BiteWalletApp.swift
//  BiteWallet
//
//  Created by 조성주 on 2/1/25.
//

import SwiftUI

@main
struct BiteWalletApp: App {
    @State var showSplashScreen: Bool = true
    
    @State private var authMacro = AuthMacro()
    
    init(){
        CustomFontManager.shared.registerFonts()
        #if DEBUG
        CustomFontManager.shared.validateFonts()
        #endif
    }
    
    var body: some Scene {
        WindowGroup {
            if showSplashScreen {
                SplashScreen()
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                            withAnimation {
                                showSplashScreen = false
                            }
                        }
                    }
                    .environmentObject(authMacro)
            } else {
                ContentView()
                    .environmentObject(authMacro)
            }
        }
    }
}
