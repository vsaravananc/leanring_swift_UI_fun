//
//  ActionSheetLView.swift
//  learning
//
//  Created by Saravanan V on 29/09/26.
//

import SwiftUI

struct ActionSheetLView: View {
    @State private var showActionSheet = false
    @State private var backgroundColor = Color.white
    var body: some View {
        Button("Show ActionSheet") {
            showActionSheet.toggle()
        }
        .background(backgroundColor)
        .confirmationDialog("Change background", isPresented: $showActionSheet) {
            Button("Red") { backgroundColor = .red }
            Button("Green") { backgroundColor = .green }
            Button("Blue") { backgroundColor = .blue }
            Button("Cancel", role: .destructive) { }
        } message: {
            Text("Select a new color")
        }
    }
}

#Preview {
    ActionSheetLView()
}
