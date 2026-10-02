//
//  BindingLView.swift
//  learning
//
//  Created by Saravanan V on 23/09/26.
//

import SwiftUI

struct BindingLView: View {
    
    @State var backgroundColor: Color = .blue
    
    var body: some View {
        ZStack{
            backgroundColor.ignoresSafeArea()
            VStack{
                BindingLButton (
                    backgroundColor: $backgroundColor
                )
            }
        }
    }
}

struct BindingLButton : View {
    
    @Binding var backgroundColor: Color
    
    var body: some View {
        Button(action:{
            if self.backgroundColor == .blue {
                self.backgroundColor = .pink
            }else{
                self.backgroundColor = .blue
            }
        }) {
            Text("Tap Me")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .padding()
                .padding(.horizontal)
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .fill(.pink)
                        .shadow(radius: 8)
                )
        }

    }
}


#Preview {
    BindingLView()
}
