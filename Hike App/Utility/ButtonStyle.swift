//
//  ButtonStyle.swift
//  Hike App
//
//  Created by Vito Borghi on 18/12/2023.
//

import SwiftUI
import Foundation


struct GradientButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                configuration.isPressed ?
                    LinearGradient(colors: [.customGrayMedium, .customGreenLight], startPoint: .top, endPoint: .bottom)
                :
                    LinearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom)
            )
            .clipShape(Capsule())
    }
}
