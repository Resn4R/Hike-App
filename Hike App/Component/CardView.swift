//
//  CardView.swift
//  Hike App
//
//  Created by Vito Borghi on 13/12/2023.
//

import SwiftUI

struct CardView: View {
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
                                LinearGradient(colors: [.customGrayLight, .customGreenMedium],
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
                    
                    Image("image-1")
                        .resizable()
                        .scaledToFit()
                }
                // MARK: - FOOTER
            }
        }
        .frame(width: 326, height:570)
    }
}

#Preview {
    CardView()
}
