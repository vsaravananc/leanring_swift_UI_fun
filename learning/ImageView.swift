//
//  ImageView.swift
//  learning
//
//  Created by Saravanan V on 11/09/26.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        Image("profile")
            .resizable()
            .scaledToFill()
            .frame(width: 300, height: 300)
//            .clipped()
//            .clipShape(
//                RoundedRectangle(cornerRadius: 29)
//            )
    }
}

#Preview {
    ImageView()
}
