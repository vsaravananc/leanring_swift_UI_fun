//
//  ResizeableBottomSheet.swift
//  learning
//
//  Created by Saravanan V on 31/10/26.
//

import SwiftUI

struct ResizeableBottomSheet: View {
    @State var isPresented: Bool = false
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onTapGesture {
                isPresented.toggle()
            }
            .sheet(isPresented: $isPresented) {
                VStack {
                      Text("Hello World")
                        .onTapGesture {
                            isPresented = false
                        }
                }.presentationDetents([.fraction(0.1),.medium, .large])
//                    .presentationDragIndicator(.hidden)
//                    .interactiveDismissDisabled()
                    .onDisappear {
                        print("Sheet dismissed")
                    }
            }.onAppear{
                isPresented = true
            }
    }
}

#Preview {
    ResizeableBottomSheet()
}
