//
//  CustomCircleView.swift
//  Hike App
//
//  Created by Vito Borghi on 21/12/2023.
//

import SwiftUI

struct CustomCircleView: View {
    @State private var isAnimated = false
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(colors: [.customIndigoMedium, .customSalmonLight],
                                   startPoint: isAnimated ? .topLeading : .bottomLeading,
                                   endPoint: isAnimated ? .bottomTrailing : .topTrailing
                                  )
                )
                .onAppear{
                    withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)) {
                        isAnimated.toggle()
                    }
                }
                MotionAnimationView()
        }
            .frame(width: 256, height: 256)
    }
}

#Preview {
    CustomCircleView()
}
