//
//  SpacerView.swift
//  learning
//
//  Created by Saravanan V on 13/09/26.
//

import SwiftUI

struct SpacerView: View {
    var body: some View {
        HStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Spacer()
            Text("Hello, World!")
        }
        .font(.headline)
        .fontDesign(.rounded)
        .fontWeight(.medium)
        .padding(.horizontal)
    }
}

#Preview {
    SpacerView()
}
