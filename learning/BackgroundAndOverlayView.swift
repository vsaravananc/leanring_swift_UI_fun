//
//  BackgroundAndOverlayView.swift
//  learning
//
//  Created by Saravanan V on 11/09/26.
//

import SwiftUI

struct BackgroundAndOverlayView: View {
    var body: some View {
       Image(systemName: "heart.fill")
            .font(.system(size: 45))
            .foregroundStyle(.red)
            .background(
                Circle()
                    .frame(
                        width: 90,
                        height: 80
                    )
                    .shadow(
                        color: .gray,
                        radius: 20,
                        x: 0,
                        y: 10
                    )
                    .overlay(
                        alignment: .topTrailing,
                        content: {
                        Circle()
                            .fill(.white)
                            .frame(
                                width: 25,
                                height: 25
                            )
                            .overlay(
                                alignment: .center
                            ) {
                                Text("2")
                                    .font(.subheadline
                                    )
                                    .fontWeight(.bold
                                    )
                            }
                            .shadow(
                                color: .pink.opacity(0.5)
                                , radius: 5)
                    }
                    ),
                alignment: .center
            )
    }
}

#Preview {
    BackgroundAndOverlayView()
}
