//
//  CounterApplicationView.swift
//  learning
//
//  Created by Saravanan V on 21/09/26.
//

import SwiftUI

struct CounterApplicationView: View {
    @State var count : Int = 0
    var body: some View {
        VStack {
            Text("Index : \(count)")
        }.frame(
            maxWidth: .infinity,
            maxHeight: .infinity
        )
        .overlay(alignment: .bottomTrailing) {
            VStack{
                Button {
                    count += 1
                } label: {
                    Image(systemName: "plus")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .padding(12)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                        )
                }
            }.padding([.bottom, .trailing],)
        }.padding(.horizontal)
    }
}

#Preview {
    CounterApplicationView()
}
