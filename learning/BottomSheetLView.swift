//
//  BottomSheetLView.swift
//  learning
//
//  Created by Saravanan V on 24/09/26.
//

import SwiftUI

struct BottomSheetLView: View {
    
    @State var isPresented: Bool = false
    @State var isfullScreen: Bool = false
    
    var body: some View {
        ZStack{
            Color.red.ignoresSafeArea(edges: .all)
            Button {
                isPresented.toggle()
            } label: {
                Text("Tap Me")
                    .font(.largeTitle)
                    .fontWeight(.medium)
                    .foregroundStyle(.white)
            }.sheet(isPresented: $isPresented) {
                ZStack{
                    Color.blue.ignoresSafeArea(edges: .all)
                    Button {
                        isfullScreen = true
                    } label: {
                        Text("Tap Me")
                            .font(.largeTitle)
                            .fontWeight(.medium)
                            .foregroundStyle(.white)
                    }
                }.fullScreenCover(isPresented: $isfullScreen) {
                    ZStack{
                        Color.orange.ignoresSafeArea(edges: .all)
                        Button {
                            isfullScreen = false
                            isPresented = false
                        } label: {
                            Text("Tap Me")
                                .font(.largeTitle)
                                .fontWeight(.medium)
                                .foregroundStyle(.white)
                        }
                    }
                }
            }

        }
    }
}

#Preview {
    BottomSheetLView()
}
