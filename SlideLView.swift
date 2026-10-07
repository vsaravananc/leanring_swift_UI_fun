//
//  SlideLView.swift
//  learning
//
//  Created by Saravanan V on 07/10/26.
//

import SwiftUI

struct SlideLView: View {
    
    @State private var value: Double = 1
    
    var body: some View {
        VStack(spacing: 20){
           
            
            Slider(
                value: $value,
                in: 1...5,
                step: 0.1
            ){
                Text(
                    String(format: "Rating: %.1f", value)
                )
            } minimumValueLabel: {
                Text("1")
            } maximumValueLabel: {
                Text("5")
            }

        }.padding(.horizontal)
    }
}

#Preview {
    SlideLView()
}
