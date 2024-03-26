//

import SwiftUI

struct CardView: View {
    var body: some View {
        //MARK: - CARD
        ZStack {
            CustomBackgroundView()

            ZStack {
                Circle()
                    .fill(LinearGradient(
                        colors: [
                            .INDIGO_MEDIUM,
                            .SALMON_LIGHT],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing))
                    .frame(width: 256, height: 256)

                Image("image-1")
                    .resizable()
                    .scaledToFit()
            }
        }
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
