//
//  ContentView.swift
//  CustomTabView
//
//  Created by Vladislav Novoshinskiy on 07.05.2023.
//

import SwiftUI

struct ContentView: View {
    @State var selectedTab: String = "house"
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Spacer()
                ZStack {
                    if selectedTab == "house" {
                        OneView()
                    } else if selectedTab == "book" {
                        TwoView()
                    } else if selectedTab == "bookmark" {
                        ThreeView()
                    } else {
                        FourView()
                    }
                }
                Spacer()
                CustomTabView(selectedTab: $selectedTab)
            }
            .padding(.vertical)
            .background(Color("ColorBG"))
            .ignoresSafeArea()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
