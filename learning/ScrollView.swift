//
//  ScrollView.swift
//  learning
//
//  Created by Saravanan V on 17/09/26.
//

import SwiftUI

struct ScrollLView: View {
    var body: some View {
        ScrollView {
            VStack {
                ForEach(0..<30) { index in
                    ScrollView (.horizontal){
                        HStack{
                            ForEach(0..<30) { index in
                                RoundedRectangle(cornerRadius: 12)
                                    .fill(Color.blue)
                                    .frame(width: 300, height: 300)
                                    .shadow(radius: 8)
                                    .padding(16)
                            }
                        }
                    }.scrollIndicators(.hidden)
                }
            }
        }.scrollIndicators(.hidden)
    }
}

#Preview {
    ScrollLView()
}
