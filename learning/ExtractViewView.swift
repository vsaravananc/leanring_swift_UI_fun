//
//  ExtractViewView.swift
//  learning
//
//  Created by Saravanan V on 23/09/26.
//

import SwiftUI

struct ExtractViewView: View {
    
    let backGroundColor : Color = .blue
    
    var body: some View {
        ZStack{
            backGroundColor.ignoresSafeArea()
            VStack(spacing: 30){
                ExtractedView(title: "Apple", count: 20, color: .red)
                ExtractedView(title: "Orange", count: 22, color: .orange)
            }
        }
    }
    
}

#Preview {
    ExtractViewView()
}

struct ExtractedView: View {
    let title : String
    let count : Int
    let color : Color
    var body: some View {
        VStack{
            Text(title)
                .font(.largeTitle)
                .foregroundColor(.white)
            Text("\(count)")
                .font(.headline)
                .foregroundColor(.white)
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 12)
                .fill(color)
                .shadow(
                    color:.black.opacity(0.8),
                    radius: 8
                )
        )
    }
}
