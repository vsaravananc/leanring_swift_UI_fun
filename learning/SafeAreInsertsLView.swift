//
//  SafeAreInsertsLView.swift
//  learning
//
//  Created by Saravanan V on 02/11/26.
//

import SwiftUI

struct SafeAreInsertsLView: View {
    var body: some View {
        VStack(alignment:.center){
            Text("Hello, World!")
                
        }.frame(
            maxWidth:.infinity,
            maxHeight:.infinity,
        )
        .safeAreaInset(edge: .bottom) {
            Text("Safe Area")
                .frame(maxWidth: .infinity, minHeight: 50, alignment: .center)
                .background(Color.blue)
        }
    }
}

#Preview {
    SafeAreInsertsLView()
}
