//
//  NavigationStackLView.swift
//  learning
//
//  Created by Saravanan V on 27/10/26.
//

import SwiftUI

struct NavigationStackLView: View {
    var body: some View {
        NavigationStack{
            VStack{
                NavigationLink(value: "Home") {
                    Text("Go to Home")
                }
            }
            .navigationTitle(Text("NavigationStack"))
            .navigationDestination(for: String.self) { value in
                Text("Destination for \(value)")
            }
        }
    }
}

#Preview {
    NavigationStackLView()
}
