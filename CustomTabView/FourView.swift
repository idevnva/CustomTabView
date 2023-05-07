//
//  FourView.swift
//  CustomTabView
//
//  Created by Vladislav Novoshinskiy on 07.05.2023.
//

import SwiftUI

struct FourView: View {
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(.red)
                .frame(width: 300)
            
            Text("4")
                .font(.system(size: 100))
                .bold()
                .foregroundColor(.white)
        }
    }
}

struct FourView_Previews: PreviewProvider {
    static var previews: some View {
        FourView()
    }
}
