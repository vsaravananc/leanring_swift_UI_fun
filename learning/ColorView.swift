//
//  ColorView.swift
//  learning
//
//  Created by Saravanan V on 09/09/26.
//

import SwiftUI

struct ColorView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                Color.secondary
//                Color(uiColor: UIColor.tertiarySystemBackground)
                Color("ColorLe")
            )
            .frame(width: 200, height: 200)
//            .shadow(radius: 5)
//            .shadow(color: Color("ColorLe").opacity(0.3), radius: 10)
            .shadow(radius: 10,x: 20,y: 20)
        Text("Hello World")
    }
}

#Preview {
    ColorView()
}
