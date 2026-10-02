//
//  NavigationLView.swift
//  learning
//
//  Created by Saravanan V on 26/09/26.
//

import SwiftUI

struct NavigationLView: View {
    
    
    var body: some View {
        NavigationView {
            ZStack{
                Color.white.ignoresSafeArea(.all)
                ScrollView{
                    ForEach(0..<200) { index in
                        Text("\(index)")
                            .font(.headline)
                            .fontWeight(.bold)
                            .padding(10)
                    }
                }.scrollIndicators(.hidden)
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink {
                        SecondaryNavigationLView()
                    } label: {
                        Image(systemName: "heart.fill")
                    }.tint(.red)

                }
                
            }
            .navigationTitle(
                Text("NavigationLView")
            )
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct SecondaryNavigationLView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Text("Link")
            .toolbar(content: {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "heart.fill")
                    }
                }
            })
            .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    NavigationLView()
}
