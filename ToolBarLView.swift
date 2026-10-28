//
//  ToolBarLView.swift
//  learning
//
//  Created by Saravanan V on 27/10/26.
//

import SwiftUI

struct ToolBarLView: View {
    var body: some View {
        NavigationStack {
            VStack{
                TextField("Enter text", text: .constant(""))
            }.toolbar {
                ToolbarItem(placement: .bottomBar) {
                    Text("Hello")
                }
            }
        }
    }
}

#Preview {
    ToolBarLView()
}
