//
//  SwiftUIView.swift
//  BiteWallet
//
//  Created by 조성주 on 2/1/25.
//

import SwiftUI

extension View {
    @ViewBuilder func `if`<Transform: View>(
        _ condition: Bool,
        transform: (Self) -> Transform
    ) -> some View {
        if condition {
            transform(self)
        } else {
            self
        }
    }
}
