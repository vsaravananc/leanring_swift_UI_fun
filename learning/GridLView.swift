//
//  GridLView.swift
//  learning
//
//  Created by Saravanan V on 18/09/26.
//

import SwiftUI

struct GridLView: View {
    let columns = [
        GridItem(.flexible(),spacing: 4),
        GridItem(.flexible(),spacing: 4),
        GridItem(.flexible())
    ]
    var body: some View {
        ScrollView{
            LazyVGrid(columns: columns,spacing: 4,pinnedViews: [.sectionHeaders]) {
                Section {
                    ForEach(0..<21) { index in
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color.blue)
                            .frame(height: 150)
                    }
                } header: {
                    Text("Header")
                        .font(.largeTitle)
                        .fontWeight(.medium)
                        .background(.red)
                }
            }
        }.scrollIndicators(.hidden)
        .padding(.horizontal,8)
    }
}

#Preview {
    GridLView()
}
