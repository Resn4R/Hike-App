//
//  CardView.swift
//  Hike App
//
//  Created by Vito Borghi on 13/12/2023.
//

import SwiftUI

struct CardView: View {
    var body: some View {
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
    }
}

#Preview {
    CardView()
}
