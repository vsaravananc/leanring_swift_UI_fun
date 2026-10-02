//
//  TextFiledLView.swift
//  learning
//
//  Created by Saravanan V on 30/09/26.
//

import SwiftUI

struct TextFiledLView: View {
    
    @State private var text = ""
    
    var body: some View {
        VStack(spacing: 20){
            Text(text)
                .font(.headline)
                .fontWeight(.medium)
//            TextField("Enter Text", text: $text)
//                .textFieldStyle(.roundedBorder)
//            TextField(text: $text, label: {})
              TextField("Enter Text", text: $text)
                .onSubmit {
                    print(text)
                }.onChange(of: text, { oldValue, newValue in
                    print("Old Value: \(oldValue), New Value: \(newValue)")
                })
                .keyboardType(.emailAddress)
                .padding()
                .background(
                    RoundedRectangle(
                        cornerRadius: 8
                    ).fill(.gray.opacity(0.1))
                )
            
        }.padding(.horizontal)
    }
}

#Preview {
    TextFiledLView()
}
