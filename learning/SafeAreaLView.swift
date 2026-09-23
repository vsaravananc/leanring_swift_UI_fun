//
//  SafeAreaLView.swift
//  learning
//
//  Created by Saravanan V on 20/09/26.
//

import SwiftUI

struct SafeAreaLView: View {
    var body: some View {
        ZStack{
            Color.red
                .ignoresSafeArea()
            VStack{
                Text("Happy to see you")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                Spacer()
            }
            .frame(
                maxWidth: .infinity,
                maxHeight: .infinity
            )
        }
    }
}

#Preview {
    SafeAreaLView()
}
