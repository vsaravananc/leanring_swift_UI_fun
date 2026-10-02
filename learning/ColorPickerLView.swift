//
//  ColorPickerLView.swift
//  learning
//
//  Created by Saravanan V on 02/10/26.
//

import SwiftUI

struct ColorPickerLView: View {
    @State private var color: Color = .blue
    var body: some View {
        ZStack{
            color.ignoresSafeArea(edges: .all)
            ColorPicker("Color picker", selection: $color)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        .fill(.white)
                )
                .padding(.horizontal)
        }.animation(.spring, value: color)
    }
}

#Preview {
    ColorPickerLView()
}
