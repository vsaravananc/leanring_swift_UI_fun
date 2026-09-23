//
//  ExtractFunctionView.swift
//  learning
//
//  Created by Saravanan V on 23/09/26.
//

import SwiftUI

struct ExtractFunctionView: View {
    @State var backGroundColor : Color = .pink
    var body: some View {
        ZStack{
            backGroundColor.ignoresSafeArea()
            contentLayout
           
        }
    }
    
    var contentLayout : some View {
        VStack{
            Text("\(backGroundColor)")
                .font(.largeTitle)
                .foregroundColor(.white)
            Button(action: changeBackgroundColor) {
                Text("Change Color")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .fill(.black)
                    )
            }
        }
    }
    
    func changeBackgroundColor() {
        if(self.backGroundColor == .pink){
            self.backGroundColor = .blue
        }else{
            self.backGroundColor = .pink
        }
    }
}

#Preview {
    ExtractFunctionView()
}
