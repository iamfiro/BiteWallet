import SwiftUI

enum CustomFontType {
    case wantedSansRegular
    case wantedSansMedium
    case wantedSansSemiBold
    case wantedSansBold
    case urbanist
    case custom(String)
    
    var fontName: String {
        switch self {
        case .wantedSansRegular:
            return "WantedSans-Regular"
        case .wantedSansMedium:
            return "WantedSans-Medium"
        case .wantedSansSemiBold:
            return "WantedSans-SemiBold"
        case .wantedSansBold:
            return "WantedSans-Bold"
        case .urbanist:
            return "Urbanist-Semibold"
        case .custom(let name):
            return name
        }
    }
}
