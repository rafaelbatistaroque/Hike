//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            //MARK: - 1. DEPTH
            Color.GREEN_DARK
                .clipShape(.rect(cornerRadius: 40))
                .offset(y: 12)

            //MARK: - 2. LIGHT
            Color.GREEN_LIGHT
                .clipShape(.rect(cornerRadius: 40))
                .offset(y: 3)
                .opacity(0.85)

            //MARK: - 3. SURFACE
            LinearGradient(
                colors: [
                    .GREEN_LIGHT,
                    .GREEN_MEDIUM],
                startPoint: .top,
                endPoint: .bottom)
            .clipShape(.rect(cornerRadius: 40))
        }
    }
}

#Preview {
    CustomBackgroundView()
        .padding()
}
