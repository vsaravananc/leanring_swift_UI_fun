//
//  ListOnSwipActionLView.swift
//  learning
//
//  Created by Saravanan V on 23/10/26.
//

import SwiftUI

struct ListOnSwipActionLView: View {

    @State private var list: [String] = [
        "Apple", "Banana", "Orange", "Mango", "Pineapple",
    ]

    var body: some View {
        List {
            ForEach(list, id: \.self) { item in
                Text(item)
                    .badge(9)
                    .swipeActions(
                        edge: .trailing,
                        allowsFullSwipe: false,
                        content: {
                            Button("Delete") {

                            }.tint(.red)
                            Button("Junk") {

                            }.tint(.black)
                            Button("Save") {

                            }.tint(.green)
                        }
                    )
            }
        }

    }
}

#Preview {
    ListOnSwipActionLView()
}
