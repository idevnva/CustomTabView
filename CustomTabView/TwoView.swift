//
//  TwoView.swift
//  CustomTabView
//
//  Created by Vladislav Novoshinskiy on 07.05.2023.
//

import SwiftUI

struct TwoView: View {
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(.green)
                .frame(width: 300)
            
            Text("2")
                .font(.system(size: 100))
                .bold()
                .foregroundColor(.white)
        }
    }
}

struct TwoView_Previews: PreviewProvider {
    static var previews: some View {
        TwoView()
    }
}
