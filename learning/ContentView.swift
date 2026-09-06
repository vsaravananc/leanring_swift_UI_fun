//
//  ContentView.swift
//  learning
//
//  Created by Saravanan V on 06/09/26.
//

import SwiftUI

struct ContentView: View {
    @State private var maxline = 2
    var body: some View {
        Text("Hello happy to se you my brother i am learning swiftui with the fun of joy")
            .font(.body)
            .fontWeight(.semibold)
//            .underline()
//            .strikethrough()
//            .italic()
//            .kerning(0.9)
            .multilineTextAlignment(.leading)
            .foregroundStyle(.brown)
            .lineLimit(1...maxline)
            .onTapGesture {
                if(maxline == 2){
                    maxline = 10
                }else{
                    maxline = 2
                }
            }
            .padding(.horizontal)
        
    }
}

#Preview {
    ContentView()
}
