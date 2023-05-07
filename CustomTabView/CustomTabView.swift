//
//  CustomTabView.swift
//  CustomTabView
//
//  Created by Vladislav Novoshinskiy on 07.05.2023.
//

import SwiftUI

struct CustomTabView: View {
    
    @Binding var selectedTab: String
    
    var body: some View {
        HStack {
            TabView(image: "house", selectedTab: $selectedTab)
            TabView(image: "book", selectedTab: $selectedTab)
            TabView(image: "bookmark", selectedTab: $selectedTab)
            TabView(image: "person", selectedTab: $selectedTab)
        }
        .padding()
        .background(Color("ColorTab"))
        .cornerRadius(25)
        .padding(.horizontal)
    }
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TabView: View {
    
    let image: String
    @Binding var selectedTab: String
    
    var body: some View {
        GeometryReader { button in
            Button {
                withAnimation(.linear(duration: 0.3)) {
                    selectedTab = image
                }
            } label: {
                VStack {
                    Image(systemName: "\(image)\(selectedTab == image ? ".fill" : "")")
                        .offset(y: selectedTab == image ? -5 : 0)
                        .scaleEffect(selectedTab == image ? 1.2 : 1.0)
                        .foregroundColor(selectedTab == image ? .accentColor : Color("ColorBG"))
                    
                    RoundedRectangle(cornerRadius: 1)
                        .frame(width: 20, height: 2)
                        .background(selectedTab == image ? .accentColor : Color("ColorBG"))
                        .opacity(selectedTab == image ? 1.0 : 0.0)
                        .padding(.top, 1)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .frame(height: 50)
    }
}
