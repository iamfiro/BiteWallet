//
//  SplashScreen.swift
//  BiteWallet
//
//  Created by 조성주 on 2/1/25.
//


import SwiftUI

struct SplashScreen: View {
    var body: some View {
        VStack() {
            Spacer()
            Image("logo/default")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150)
            Spacer()
            Typo.Regular(text: "문맹은 생활을 불편하게 하지만 금융문맹은 생존을 불가능하게 한다 \n\n- 앨런 그린스펀", color: Color("primary/dark"), fontType: .wantedSansMedium,alignment: .center)
                .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("primary"))
    }
}

#Preview {
    SplashScreen()
}
