//
//  CustomListRowView.swift
//  Hike App
//
//  Created by Vito Borghi on 21/12/2023.
//

import SwiftUI

struct CustomListRowView: View {
    @State var rowLabel: String
    @State var rowIcon: String
    @State var rowContent: String
    @State var rowTintColor: Color
    var body: some View {
        LabeledContent{
            Text(rowContent)
                .foregroundStyle(.primary)
                .fontWeight(.heavy)
        } label: {
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30, height: 30)
                        .foregroundStyle(rowTintColor)
                    
                    Image(systemName: rowIcon)
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                }
                Text(rowLabel)
            }
        }
    }
}

#Preview {
    List {
        CustomListRowView(rowLabel: "Sample", rowIcon: "apple.logo", rowContent: "Vik", rowTintColor: .pink)
    }
}
