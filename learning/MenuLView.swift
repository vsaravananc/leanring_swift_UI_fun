//
//  MenuLView.swift
//  learning
//
//  Created by Saravanan V on 05/11/26.
//

import SwiftUI

struct MenuLView: View {
    var body: some View {
        Menu("Click me") {
            Menu("reply") {
                Text("Emoji")
                Text("Voice")
                Text("Text")
            }
            Text("forward")
            Text("delete")
            Text("share")
        }
        
        
    }
}

#Preview {
    MenuLView()
}
