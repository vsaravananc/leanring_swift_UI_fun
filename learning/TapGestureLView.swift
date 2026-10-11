//
//  TapGestureLView.swift
//  learning
//
//  Created by Saravanan V on 10/10/26.
//

import SwiftUI

struct TapGestureLView: View {
    
    @State private var backgroundColor: Bool = false
    
    var body: some View {
        VStack(spacing: 20){
            
            RoundedRectangle(cornerRadius: 12)
                .fill(backgroundColor ? Color.blue : Color.red)
                .frame(height: 200)
            
            Text("Tap to change color")
                .font(.headline)
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 8)
                ).onTapGesture(count:2) {
                    backgroundColor.toggle()
                }
            
            Spacer()
            
        }.padding(.horizontal)
    }
}

#Preview {
    TapGestureLView()
}
