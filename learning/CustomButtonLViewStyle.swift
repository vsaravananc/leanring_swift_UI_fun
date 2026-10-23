//
//  CustomButtonLViewStyle.swift
//  learning
//
//  Created by Saravanan V on 23/10/26.
//

import SwiftUI

struct CustomButtonLViewStyle: View {
    var body: some View {
        VStack(spacing: 20){
            Button {
                
            } label: {
                Text("Button Label")
            }
            .padding(10)
            .padding(.horizontal, 8)
            .background(
                RoundedRectangle(cornerRadius: 8)
            )
            
            Button {
                
            } label: {
                Text("Button Label")
                    .padding(.horizontal, 8)
                    .padding(.vertical,4)
            }
            .buttonStyle(.borderedProminent)

        }
    }
}

#Preview {
    CustomButtonLViewStyle()
}
