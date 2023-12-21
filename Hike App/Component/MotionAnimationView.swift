//
//  MotionAnimationView.swift
//  Hike App
//
//  Created by Vito Borghi on 21/12/2023.
//

import SwiftUI

struct MotionAnimationView: View {
    @State private var randomCircle = Int.random(in: 6...12)
    @State private var isAnimated = false
    
    func randomCoordinate() -> CGFloat {
        CGFloat.random(in: 0...256)
    }
    
    func randomSize() -> CGFloat {
        CGFloat(Int.random(in: 0...80))
    }
    
    func randomScale() -> CGFloat {
        CGFloat(Double.random(in: 0.1...2.0))
    }
    
    func randomSpeed() -> Double {
        Double.random(in: 0.05...1.0)
    }
    
    func randomDelay() -> Double {
        Double.random(in: 0...2)
    }
    
    var body: some View {
        ZStack {
            ForEach(0...randomCircle, id: \.self) { item in
                Circle()
                    .foregroundStyle(.white)
                    .opacity(0.25)
                    .frame(width: randomSize())
                    .position(x: randomCoordinate(), y: randomCoordinate())
                    .scaleEffect(isAnimated ? randomScale() : 1)
                    .onAppear {
                        withAnimation(
                            .interpolatingSpring(stiffness: 0.25, damping: 0.25)
                            .repeatForever()
                            .speed(randomSpeed())
                            .delay(randomDelay())
                        ) {
                        isAnimated = true
                        }
                    }
            }
        }
        .frame(width: 256)
        .mask(Circle())
        .drawingGroup()
    }
        
}

#Preview {
    ZStack{
        MotionAnimationView()
            .background(
                Circle().fill(.teal)
            )
    }
}
