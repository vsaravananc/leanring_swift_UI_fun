//
//  TranscationLView.swift
//  learning
//
//  Created by Saravanan V on 24/09/26.
//

import SwiftUI

struct TranscationLView: View {
    
    @State var isAnimationg : Bool = false
    
    var body: some View {
        ZStack(alignment:.bottom){
            VStack{
                Button {
                   isAnimationg.toggle()
                } label: {
                   Text("Tap me")
                }
                Spacer()
            }
            
            if isAnimationg {
                RoundedRectangle(cornerRadius: 30)
                    .fill()
                    .frame( height: 300)
                    .transition(.move(edge: .leading))
                    .animation(.default, value: isAnimationg)
            }
            
        }.ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    TranscationLView()
}
