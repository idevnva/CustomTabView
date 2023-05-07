//
//  ThreeView.swift
//  CustomTabView
//
//  Created by Vladislav Novoshinskiy on 07.05.2023.
//

import SwiftUI

struct ThreeView: View {
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(.orange)
                .frame(width: 300)
            
            Text("3")
                .font(.system(size: 100))
                .bold()
                .foregroundColor(.white)
        }
    }
}

struct ThreeView_Previews: PreviewProvider {
    static var previews: some View {
        ThreeView()
    }
}
