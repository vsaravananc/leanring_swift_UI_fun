//
//  PopOverLView.swift
//  learning
//
//  Created by Saravanan V on 05/11/26.
//

import SwiftUI

struct PopOverLView: View {
    @State private var showPopover: Bool = false
    var body: some View {
        Menu {
            Button("Item 1") {}
            
            Button("Item 2") {
                showPopover.toggle()
            }
        } label: {
            Button("Click me"){
                
            }
        }.menuStyle(.borderlessButton)
        .popover(isPresented: $showPopover,attachmentAnchor: .point(.bottomTrailing)) {
            Text("Hello, World!")
                .padding(.horizontal,15)
                .presentationCompactAdaptation(.popover)
        }
    }
}

#Preview {
    PopOverLView()
}
