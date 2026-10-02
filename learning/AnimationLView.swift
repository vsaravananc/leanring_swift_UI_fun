//
//  AnimationLView.swift
//  learning
//
//  Created by Saravanan V on 24/09/26.
//

import SwiftUI

struct AnimationLView: View {
    
    @State var isTapped: Bool = false
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: isTapped ? 30 : 50)
                .fill(.blue)
                .frame(
                    width: isTapped ? nil : 60,
                    height:isTapped ? 600 : 60,
                )
            
                .onTapGesture {
                    isTapped.toggle()
                }
                .frame(
                    maxWidth: .infinity,
                    maxHeight: .infinity,
                    alignment: isTapped ? .top: .bottomLeading
                )
                .padding(.horizontal)
                .animation(Animation.spring(
                    response: 0.4,
                    dampingFraction: 0.7
                ), value: isTapped)
        }
    }
}

#Preview {
    AnimationLView()
}
