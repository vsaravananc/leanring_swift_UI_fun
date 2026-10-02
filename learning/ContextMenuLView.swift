//
//  ContextMenuLView.swift
//  learning
//
//  Created by Saravanan V on 30/09/26.
//

import SwiftUI

struct ContextMenuLView: View {
    var body: some View {
        Button {
            
        } label: {
            Label("Continue", systemImage: "flame.fill")
        }.tint(.red)
            .contextMenu {
                Button("Share") {}
                Menu {
                    Button("Option 1") {
                        
                    }
                    Button("Option 2") {
                        
                    }
                } label: { Text("More Options") }
            }preview: {
                Label("Continue", systemImage: "flame.fill")
                    .padding()
                    .tint(.red)
            }
    }
}

#Preview {
    ContextMenuLView()
}
