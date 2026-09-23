//
//  ShapesView.swift
//  learning
//
//  Created by Saravanan V on 06/09/26.
//

import SwiftUI

struct ShapesView: View {
    var body: some View {
//        Circle()
//        Ellipse()
//        Capsule(style: .continuous,)
//        Rectangle()
        RoundedRectangle(cornerRadius: 25)
//            .fill(.red)
//            .foregroundStyle(.cyan)
//            .stroke()
//            .stroke(.blue,lineWidth: 10,antialiased: true)
//            .trim(from: 0.5, to: 1)
//            .stroke(.pink, style: StrokeStyle(lineWidth: 20,lineCap: .round,dash: [30]))
            .frame(width: 300, height: 200)
            
    }
}

#Preview {
    ShapesView()
}
