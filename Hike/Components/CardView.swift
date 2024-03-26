//

import SwiftUI

struct CardView: View {
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
        }
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}