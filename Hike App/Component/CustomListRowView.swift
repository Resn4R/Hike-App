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
    @State var rowContent: String? = nil
    @State var rowTintColor: Color
    
    @State var rowLinkLabel: String? = nil
    @State var rowLinkDestination: String? = nil
    
    var body: some View {
        LabeledContent{
            if let rowContent = rowContent {
                Text(rowContent)
                    .foregroundStyle(.primary)
                    .fontWeight(.heavy)
                
            } else if let rowLinkLabel = rowLinkLabel, let rowLinkDestination = rowLinkDestination {
                Link(rowLinkLabel, destination: URL(string: rowLinkDestination)!)
                    .foregroundStyle(.pink)
                    .fontWeight(.heavy)
            } else { EmptyView() }
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
        CustomListRowView(rowLabel: "Sample", rowIcon: "apple.logo", rowContent: "Vik", rowTintColor: .pink, rowLinkLabel: "Test Link", rowLinkDestination: "https://google.com")
    }
}
