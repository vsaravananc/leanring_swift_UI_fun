//
//  ButtonLView.swift
//  learning
//
//  Created by Saravanan V on 20/09/26.
//

import SwiftUI

struct ButtonLView: View {
    var body: some View {
        VStack(spacing: 30){
            Button {
                
            } label: {
                Text("Hello, World!")
            }.accentColor(.red)
            
            Button {
                
            } label: {
                Text("Continue")
                    .foregroundStyle(.white)
                    .fontWeight(.medium)
                    .padding()
                    .padding(.horizontal, 40)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                    )
            }
            
            Button {
                
            } label: {
                Image(systemName: "heart.fill")
                    .padding()
                    .foregroundStyle(.white)
                    .background(
                        Circle()
                            .shadow(radius: 10)
                    )
            }
            
            Button {
                
            } label: {
                Text("Boy")
                    .padding()
                    .padding(.horizontal,10)
                    .background(
                        Capsule()
                            .stroke(.gray, lineWidth: 1)
                    )
            }

        }

    }
}

#Preview {
    ButtonLView()
}
