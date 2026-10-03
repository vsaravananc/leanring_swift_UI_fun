//
//  StperLView.swift
//  learning
//
//  Created by Saravanan V on 03/10/26.
//

import SwiftUI

struct StperLView: View {
    
    @State private var count : CGFloat = 0
    @State private var height : CGFloat = 0
    
    var body: some View {
        Stepper("Stepper : \(count)", value: $count)
            .padding(20)
        
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 50 + count, height: 50 + height)
            .animation(.default,value: count)
            
        Stepper("Stepper") {
            count += 10
            height += 10
        } onDecrement: {
            count -= 10
            height -= 10
        }

    }
}

#Preview {
    StperLView()
}
