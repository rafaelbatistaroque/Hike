//

import SwiftUI

struct CardView: View {
    //MARK: - PROPERTIES
    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1

    //MARK: - FUNCTIONS
    func randomImage(){
        randomNumber = Int.random(in: 1...5)
        if randomNumber == imageNumber {
            randomImage()
        }

        imageNumber = randomNumber
    }

    var body: some View {
        //MARK: - CARD
        ZStack {
            CustomBackgroundView()

            VStack {
                //MARK: - HEADER
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(LinearGradient(
                                colors: [
                                    .GRAY_LIGHT,
                                    .GRAY_MEDIUM],
                                startPoint: .top,
                            endPoint: .bottom))

                        Spacer()

                        Button {
                            print("clique")
                        } label: {
                            CustomButtonView()
                        }
                    }

                    Text("Fun and enjoyable outdoor activity for friends and families.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.GRAY_MEDIUM)
                }
                .padding(.horizontal, 30)

                //MARK: - MAIN CONTENT
                ZStack {
                    CustomCircleView()

                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.easeOut(duration: 0.25), value: imageNumber)
                }

                //MARK: - FOOTER
                Button{
                    randomImage()
                } label:{
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(LinearGradient(
                            colors: [
                                .GREEN_LIGHT,
                                .GREEN_MEDIUM],
                            startPoint: .top,
                            endPoint: .bottom))
                        .shadow(color: .black.opacity(0.25), radius: 0.25, x: 1, y: 2)
                }
                .buttonStyle(GradientButtonStyle())

            }
        }
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
