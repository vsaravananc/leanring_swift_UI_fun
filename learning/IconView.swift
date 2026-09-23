//
//  IconView.swift
//  learning
//
//  Created by Saravanan V on 11/09/26.
//

import SwiftUI

struct IconView: View {
    var body: some View {
        Image(systemName: "person.fill.badge.minus")
//            .renderingMode(.original)
            .symbolRenderingMode(.multicolor)
//            .resizable()
//            .aspectRatio(contentMode: .fill)
//            .scaledToFit()
//            .scaledToFill()
            .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.blue, .orange]), startPoint: .bottomLeading, endPoint: .trailing),LinearGradient(gradient: Gradient(colors: [.white, .black]), startPoint: .bottomLeading, endPoint: .trailing))
            .font(.title)
//            .frame(width: 300, height: 300)
//            .clipped()
    }
}

#Preview {
    IconView()
}
