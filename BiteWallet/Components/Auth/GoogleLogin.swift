import SwiftUI

struct GoogleLogin: View {
    let onTapGoogle: () -> Void
    
    init(onTapGoogle: @escaping () -> Void) {
        self.onTapGoogle = onTapGoogle
    }
    
    var body: some View {
        Button(action: onTapGoogle) {
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
            .foregroundColor(.black)
        }
        .buttonStyle(ScaleButtonStyle())
    }
}

struct ScaleButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
            .animation(.easeInOut(duration: 0.2), value: configuration.isPressed)
    }
}

#Preview {
    GoogleLogin {
        print("Google login tapped")
    }
    .preferredColorScheme(.light)
}
