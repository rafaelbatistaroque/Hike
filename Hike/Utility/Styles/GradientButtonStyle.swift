//

import SwiftUI

struct GradientButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                configuration.isPressed
                ? LinearGradient(
                    colors: [.GRAY_MEDIUM, .GRAY_LIGHT], startPoint: .top, endPoint: .bottom)
                : LinearGradient(
                    colors: [.GRAY_LIGHT, .GRAY_MEDIUM], startPoint: .top, endPoint: .bottom))
            .clipShape(.rect(cornerRadius: 40))
    }
}
