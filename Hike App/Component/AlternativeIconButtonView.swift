//
//  AlternativeIconButtonView.swift
//  Hike App
//
//  Created by Vito Borghi on 22/12/2023.
//

import SwiftUI

struct AlternativeIconButtonView: View {
    @State var icon: String
    var body: some View {
        Button {
            UIApplication.shared.setAlternateIconName(icon) { error in
                if let error = error { print("error setting the app's icon: \(error.localizedDescription)") }
                else { print("Icon changed successfully to \(icon)") }
            }
        }label: {
            Image("\(icon)-Preview")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .clipShape(RoundedRectangle(cornerRadius: 16))
        }
    }
}

#Preview {
    AlternativeIconButtonView(icon: "AppIcon-Backpack")
}
