//
//  CardView.swift
//  Hike App
//
//  Created by Vito Borghi on 13/12/2023.
//

import SwiftUI

struct CardView: View {
    
    @State var imageIndex = 1
    
    func randomImage(_ index: Int) -> Image {
        Image("image-\(imageIndex)")
    }
    
    var body: some View {
        // MARK: - CARD
        ZStack {
            CustomBackgroundView()
            VStack {
                // MARK: - HEADER
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(colors: [.customGrayLight, .customGrayMedium],
                                               startPoint: .top,
                                               endPoint: .bottom)
                                )
                        Spacer()
                        Button{
                            //action: show a sheet
                            print("headeer button pressed")
                        } label: {
                            CustomButtonView()
                        }
                    }
                    Text("Fun and enjoyable activity for family and friends.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundStyle(Color.customGrayMedium)
                    
                }
                .padding(.horizontal, 30)
                
                ZStack {
                    Circle()
                        .fill(
                            LinearGradient(colors: [
                                Color("ColorIndigoMedium"),
                                Color("ColorSalmonLight")
                            ],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing)
                        )
                        .frame(height: 256)
                    ZStack {
                        CustomCircleView()
                        
                        randomImage(imageIndex)
                            .resizable()
                            .scaledToFit()
                            .animation(.easeOut(duration: 1), value: imageIndex)
                    }
                }
                // MARK: - FOOTER
                Button{
                    //action: generate a random number
                    print("footer button pressed")
                    imageIndex = Int.random(in: 1...5)
                } label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(colors: [.customGreenLight, .customGreenMedium], startPoint: .top, endPoint: .bottom)
                        )
                        .shadow(color: .black.opacity(0.25), radius: 0.25, x: 1, y: 2)
                }
                .buttonStyle(GradientButton())
            }
        }
        .frame(width: 326, height:570)
    }
}

#Preview {
    CardView()
}
