//
//  TextAreaLView.swift
//  learning
//
//  Created by Saravanan V on 30/09/26.
//

import SwiftUI

struct TextAreaLView: View {
    var body: some View {
        NavigationView{
            VStack{
                TextEditor(
                    text: .constant("Hello, World!")
                ).colorMultiply(.gray.opacity(0.1))
                    .foregroundStyle(.secondary)
                .background(RoundedRectangle(cornerRadius: 20).fill(.gray.opacity(0.1)))
                    
                    .frame(height: 200)
            }.navigationTitle(Text("Text Area View"))
        }
    }
}

#Preview {
    TextAreaLView()
}
