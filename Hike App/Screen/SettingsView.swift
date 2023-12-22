//
//  SettingsView.swift
//  Hike App
//
//  Created by Vito Borghi on 21/12/2023.
//

import SwiftUI

struct SettingsView: View {
    @State private var IconList = [
        "AppIcon-Backpack",
        "AppIcon-Camera",
        "AppIcon-Campfire",
        "AppIcon-MagnifyingGlass",
        "AppIcon-Map",
        "AppIcon-Mushroom"
    ]
    
    var body: some View {
        List {
            //MARK: - SECTION HEADER
            Section {
                HStack {
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight: .black))
                    
                    VStack (spacing: -10) {
                        Text("Hike")
                            .font(.system(size: 66, weight: .black))
                        
                        Text("Editor's Choice")
                            .fontWeight(.medium)
                    }
                    
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .black))
                    Spacer()
                }
                .foregroundStyle(LinearGradient(colors: [.customGreenLight, .customGreenMedium, .customGreenDark],
                                                startPoint: .top,
                                                endPoint: .bottom)
                )
                .padding(.top, 8)
                VStack(spacing: 8){
                    Text("Where can you find \nperfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    
                    Text("The hike which looks gorgeous in photos but is even better once you are actually there. The hike that you hope to do again someday. \nFind the best day hickes in the app.")
                        .font(.footnote)
                        .italic()
                    
                    Text("Dust off the boots! It's time for a walk.")
                        .fontWeight(.heavy)
                        .foregroundStyle(.colorGreenMedium)
                }
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 16)
                    .frame(maxWidth: .infinity)
            } //: HEADER
            .listRowSeparator(.hidden)
            //MARK: - SECTION ICONS
            Section(header: Text("Alternate Icons")) {
                    ScrollView(.horizontal) {
                        LazyHGrid(rows: [GridItem(.fixed(6))]) {
                            ForEach(IconList, id: \.self) { icon in
                                AlternativeIconButtonView(icon: icon)
                                    .padding([.horizontal, .vertical], 5)
                            }
                        }
                    }
                    .padding(.vertical, 3)
                
                Text("Choose your favourite app icon from the collection above.")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.secondary)
                    .font(.footnote)
                    .padding(.bottom, 5)
            }
            .listRowSeparator(.hidden)
            
            //MARK: - SECTION ABOUT
            Section {
                
                CustomListRowView(rowLabel:"Application", rowIcon: "apps.iphone", rowContent: "Hike", rowTintColor: .blue)
                
                CustomListRowView(rowLabel: "Compatibility", rowIcon: "info.circle", rowContent: "iOS, iPadOS", rowTintColor: .red)
                
                CustomListRowView(rowLabel: "Technology", rowIcon: "swift", rowContent: "Swift", rowTintColor: .orange)
                
                CustomListRowView(rowLabel: "Version", rowIcon: "gear", rowContent: "1.0", rowTintColor: .purple)
                
                CustomListRowView(rowLabel: "Developer", rowIcon: "ellipsis.curlybraces", rowContent: "Vito Borghi", rowTintColor: .mint)
                
                CustomListRowView(rowLabel: "Designer", rowIcon: "paintpalette", rowContent: "Robert Petras", rowTintColor: .pink)
                
                CustomListRowView(rowLabel: "Linkedin", rowIcon: "globe", rowTintColor: .indigo, rowLinkLabel: "Vito Borghi", rowLinkDestination: "https://www.linkedin.com/in/vito-borghi/")
                
                CustomListRowView(rowLabel: "GitHub", rowIcon: "book.pages", rowTintColor: .gray, rowLinkLabel: "Resn4R", rowLinkDestination: "https://github.com/Resn4R")
                
            } header: {
                Text("About the app")
            } footer: {
                HStack{
                    Spacer()
                    Text("Copyright © All rights reserved.")
                    Spacer()
                }
                .padding(.vertical, 8)
            }//: Section
        }   //: LIST
    }
}

#Preview {
    SettingsView()
}
