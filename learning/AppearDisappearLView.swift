//
//  AppearDisappearLView.swift
//  learning
//
//  Created by Saravanan V on 10/10/26.
//

import SwiftUI

struct AppearDisappearLView: View {
    
    @State private var count : Int = 200
    
    var body: some View {
        NavigationStack{
            
            ScrollView{
                LazyVStack{
                    ForEach(0..<200) { index in
                        RoundedRectangle(cornerRadius: 12)
                            .frame(height: 180)
                            .padding(.horizontal)
                            .padding(.bottom,20)
                            .onDisappear{
                                count -= 1
                            }
                            
                    }
                }
            }
            .navigationTitle("Count : \(count)")
            .toolbar(content: {
                ToolbarItem(placement: .topBarTrailing) {
                    Text("Refresh")
                        .foregroundStyle(.blue)
                        .font(.headline)
                }
            })
        }
    }
}

#Preview {
    AppearDisappearLView()
}
