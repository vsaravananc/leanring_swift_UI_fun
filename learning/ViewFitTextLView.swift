//
//  ViewFitTextLView.swift
//  learning
//
//  Created by Saravanan V on 05/11/26.
//

import SwiftUI

struct ViewFitTextLView: View {
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 8)
                .fill(Color.blue)
                .frame(width: 300,height: 300)
                .overlay(alignment:.bottomLeading){
                    ViewThatFits{
                        Text("Hi i'm saravanan i have 2 yoe of experince in mobile application development")
                        Text("I'm saravanan with 2YOE in mobile application development")
                        Text("My self is Saravanan with 2 YOE in mobile")
                    }
                }
                
        }
    }
}

#Preview {
    ViewFitTextLView()
}
