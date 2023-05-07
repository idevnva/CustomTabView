//
//  OneView.swift
//  CustomTabView
//
//  Created by Vladislav Novoshinskiy on 07.05.2023.
//

import SwiftUI

struct OneView: View {
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(.blue)
                .frame(width: 300)
            
            Text("1")
                .font(.system(size: 100))
                .bold()
                .foregroundColor(.white)
        }
    }
}

struct OneView_Previews: PreviewProvider {
    static var previews: some View {
        OneView()
    }
}
