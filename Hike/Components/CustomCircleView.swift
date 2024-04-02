//

import SwiftUI

struct CustomCircleView: View {
    @State private var isAnimationGradient: Bool = false
    
    var body: some View {
        Circle()
            .fill(LinearGradient(
                colors: [
                    .INDIGO_MEDIUM,
                    .SALMON_LIGHT],
                startPoint: isAnimationGradient ? .topLeading : .bottomLeading,
                endPoint: isAnimationGradient ? .bottomTrailing : .topTrailing))
            .onAppear{
                withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)){
                    isAnimationGradient.toggle()
                }
            }
        .frame(width: 256, height: 256)    }
}

#Preview (traits: .sizeThatFitsLayout) {
    CustomCircleView()
}
