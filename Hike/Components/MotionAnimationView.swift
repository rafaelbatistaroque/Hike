//

import SwiftUI

struct MotionAnimationView: View {
    //MARK: - PROPERTIES
    @State private var randomCircle: Int = Int.random(in: 6...12)
    @State private var isAnimating: Bool = false

    //MARK: - FUNCTIONS

    //1. RANDOM COODINATES
    func randomCoordinate() -> CGFloat {
        CGFloat.random(in: 0...256)
    }

    //2. RANDOM SIZE
    func randomSize() -> CGFloat {
        CGFloat.random(in: 4...80)
    }

    //3. RANDOM SCALE
    func randomScale() -> CGFloat {
        CGFloat(Double.random(in: 0.1...2.0))
    }

    //4. RANDOM SPEED
    func randomSpeed() -> Double {
        Double.random(in: 0.05...1.0)
    }

    //5. RANDOM DELAY
    func randomDelay() -> Double {
        Double.random(in: 0...2)
    }

    //6. RANDOM BLUR
    func randomBlur() -> Double {
        Double.random(in: 0...5)
    }
    var body: some View {
        ZStack {
            ForEach(0...randomCircle, id: \.self) { item in
                Circle()
                    .foregroundColor(.white)
                    .opacity(0.25)
                    .frame(width: randomSize())
                    .position(x: randomCoordinate(), y: randomCoordinate())
                    .scaleEffect(isAnimating ? randomScale() : 1)
                    .blur(radius: randomBlur())
                    .onAppear(perform: {
                        withAnimation(
                            .interpolatingSpring(stiffness: 0.25, damping: 0.25)
                            .repeatForever()
                            .speed(randomSpeed())
                            .delay(randomDelay())){
                                isAnimating = true
                            }
                    })
            }
        }
        .frame(width: 256, height: 256)
        .mask(Circle())
        .drawingGroup()
    }
}

#Preview(traits: .fixedLayout(width: 256, height: 256)) {
    MotionAnimationView()
        .background(Circle().fill(.teal))
}
