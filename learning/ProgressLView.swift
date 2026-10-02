//
//  ProgressLView.swift
//  learning
//
//  Created by Saravanan V on 23/09/26.
//

import SwiftUI

struct ProgressLView: View {
    var body: some View {
        ProgressView(value: 0.6)
         .progressViewStyle(.circular)
    }
}

#Preview {
    ProgressLView()
}
