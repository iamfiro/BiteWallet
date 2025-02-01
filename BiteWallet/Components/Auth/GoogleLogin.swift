//
//  GoogleLogin.swift
//  BiteWallet
//
//  Created by 조성주 on 2/1/25.
//

import SwiftUI

struct GoogleLogin: View {
    let onTapGoogle: () -> Void  // 외부에서 주입받을 로그인 로직
    
    init(onTapGoogle: @escaping () -> Void) {
        self.onTapGoogle = onTapGoogle
    }
    
    var body: some View {
        Button(action: onTapGoogle) {  // 주입받은 로직 사용
            HStack(spacing: 12) {
                Image("icon/brand/google")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                
                Typo.Medium(text: "Continue with Google")
            }
            .padding(.vertical, 16)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(.infinity)
        }
        .foregroundColor(.black)
    }
}

// 프리뷰용 예시
#Preview {
    GoogleLogin {
        // 프리뷰에서는 빈 클로저를 전달
        print("Google login tapped")
    }
    .preferredColorScheme(.light)
}
