//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        ZStack{
            Circle()
                .fill(LinearGradient(
                    colors: [
                        .white,
                        .GREEN_LIGHT,
                        .GREEN_MEDIUM],
                    startPoint: .top,
                    endPoint: .bottom))

            Circle()
                .stroke(
                    LinearGradient(
                        colors: [
                            .GRAY_LIGHT,
                            .GRAY_MEDIUM],
                        startPoint: .top,
                        endPoint: .bottom),
                    lineWidth: 4.0)

            Image(systemName: "figure.hiking")
                .fontWeight(.black)
                .font(.system(size: 30))
                .foregroundStyle(LinearGradient(
                    colors: [
                        .GRAY_LIGHT,
                        .GRAY_MEDIUM],
                    startPoint: .top,
                    endPoint: .bottom))
        }
        .frame(width: 58, height: 58)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CustomButtonView()
        .padding()
}
