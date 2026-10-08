//
//  DarkLView.swift
//  learning
//
//  Created by Saravanan V on 08/10/26.
//

import SwiftUI

struct DarkLView: View {
    var body: some View {
        NavigationStack{
            VStack{
                Text("Dark Mode")
                    .font(.headline)
                    .foregroundStyle(.secondary)
                Text("Some random text")
                    .font(.footnote)
                    .foregroundStyle(.blue)
                    .fontDesign(.rounded)
                    .underline(true, color: .blue)
                   
            }.navigationTitle(Text("Dark & Light Mode"))
        }
    }
}

#Preview("LightMode") {
    
    DarkLView()
        .preferredColorScheme(.light)
}

#Preview("DarkMode") {
    
    DarkLView()
        .preferredColorScheme(.dark)

}
