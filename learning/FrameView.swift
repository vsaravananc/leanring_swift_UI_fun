//
//  FrameView.swift
//  learning
//
//  Created by Saravanan V on 11/09/26.
//

import SwiftUI

struct FrameView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(.blue)
            .frame(maxWidth: .infinity)
            .background(Color.yellow)
            .frame(
                width: 250,height: 250)
            .background(Color.red)
            .foregroundStyle(.white)
            .font(.largeTitle)
            .fontWeight(.medium)
           
    }
}

#Preview {
    FrameView()
}
