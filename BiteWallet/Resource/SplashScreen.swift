//
//  SplashScreen.swift
//  BiteWallet
//
//  Created by 조성주 on 2/1/25.
//

import SwiftUI

struct SplashScreen: View {
    var body: some View {
        VStack {
            Typo.Jumbo(text: "Smart Banking\nFor Your\nTransaction")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            LinearGradient(
                gradient: Gradient(colors: [
                    Color("Solid/White"), Color("Primary"), Color("Primary/Dark")
                ]),
                startPoint: .top,
                endPoint: .bottom
            )
        )
    }
}

#Preview {
    SplashScreen()
}
