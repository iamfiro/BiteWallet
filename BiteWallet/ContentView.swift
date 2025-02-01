//
//  ContentView.swift
//  BiteWallet
//
//  Created by 조성주 on 2/1/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack() {
            VStack() {
                Typo.Jumbo(
                    text: "Smart Banking\nFor Your\nTransaction",
                    fontType: .urbanist,
                    alignment: .center
                )
                .padding(.bottom, 10)
                Typo.Medium(text: "Pay bills with just a few taps", color: Color("gray/500"))
            }
            Spacer()
            Image("Onboard/Security")
                .resizable()
                .frame(maxWidth: .infinity)
                .aspectRatio(contentMode: .fit)
            Spacer()
            VStack(spacing: 10) {
                GoogleLogin {
                    print("asd")
                }
                AppleLogin {
                    print("asd")
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(EdgeInsets(top: 20, leading: 20, bottom: 0, trailing: 20))
        .background(
            LinearGradient(
                gradient: Gradient(colors: [
                    Color("Solid/White"), Color("Solid/White"), Color("Primary"), Color("Primary/Dark")
                ]),
                startPoint: .top,
                endPoint: .bottom
            )
        )
    }
}

#Preview {
    ContentView()
}
