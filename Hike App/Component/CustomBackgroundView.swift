//
//  CustomBackgroundView.swift
//  Hike App
//
//  Created by Vito Borghi on 13/12/2023.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            //MARK: - 3. DEPTH
            Color.customGreenDark
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .offset(y: 12)
            //MARK: - 2. LIGHT
            Color.colorGreenLight
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .offset(y: 3)
                .opacity(0.85)
            //MARK: - 1. SURFACE
            LinearGradient(colors: [
                Color.colorGreenLight,
                Color.customGreenMedium
            ],
                           startPoint: .top,
                           endPoint: .bottom)
            .clipShape(RoundedRectangle(cornerRadius: 20))
        }
        .padding()
    }
}

#Preview {
    CustomBackgroundView()
}
