//
//  FocusStateLView.swift
//  learning
//
//  Created by Saravanan V on 27/10/26.
//

import SwiftUI

struct FocusStateLView: View {
    
    @State private var text: String = ""
    @FocusState private var focused: Bool
    
    var body: some View {
        VStack{
            TextField( "Enter Text", text: $text)
                .focused($focused)
                .padding()
                .frame(height: 55)
                .background(Color.gray.brightness(0.37))
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .submitLabel(.next)
               
            Button("Tap Me") {
                focused.toggle()
            }
        }.padding(.horizontal)
    }
}

#Preview {
    FocusStateLView()
}
