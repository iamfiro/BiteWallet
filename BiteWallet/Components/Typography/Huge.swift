//
//  Huge.swift
//  BiteWallet
//
//  Created by 조성주 on 2/1/25.
//

import SwiftUI

extension Typo {
    struct Huge: View {
        let text: String
        var color: Color = .primary
        var fontType: CustomFontType = .wantedSansBold
        var lineSpacing: CGFloat?
        var alignment: TextAlignment?
        
        var body: some View {
            Text(text)
                .font(CustomFontManager.shared.font(type: fontType, size: TypoSize.huge))
                .foregroundColor(color)
                .if(lineSpacing != nil) { view in
                    view.lineSpacing(lineSpacing!)
                }
                .if(alignment != nil) { view in
                    view.multilineTextAlignment(alignment!)
                }
        }
    }
}
