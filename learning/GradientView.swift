//
//  GradientView.swift
//  learning
//
//  Created by Saravanan V on 10/09/26.
//

import SwiftUI

struct GradientView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//        Linear Gradient
//                LinearGradient(
//                    colors: [.blue,.pink],
//                    startPoint: .top,
//                    endPoint: .bottomTrailing)
        
//        Radial Gradient
//                RadialGradient(
//                    colors: [.pink,.blue],
//                    center: .top,
//                    startRadius: 20,
//                    endRadius: 190)
        
//        Angale Gradient
                AngularGradient(
                    colors: [.pink.opacity(0.5),.blue.opacity(0.5)],
                    center: .bottom,
                    angle: Angle(degrees: 10)
                )
                )
            .frame(width: 300, height: 200)
        
    }
}

#Preview {
    GradientView()
}
