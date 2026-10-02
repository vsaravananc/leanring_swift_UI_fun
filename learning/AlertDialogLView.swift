//
//  AlertDialogLView.swift
//  learning
//
//  Created by Saravanan V on 29/09/26.
//

import SwiftUI

struct AlertDialogLView: View {
    
    @State var isShowingAlert: Bool = false
    @State var backgroundColor: Color = .blue
    
    var body: some View {
        
        ZStack{
            backgroundColor.ignoresSafeArea(edges: .all)
                .animation(.default,value: backgroundColor)
            
            Button("Show Alert") {
                isShowingAlert.toggle()
            }.tint(.white)
            .alert("Confirmation", isPresented: $isShowingAlert) {
                Button("No", role: .cancel) {
                    
                }
                Button("Yes", role: .destructive) {
                    if backgroundColor == .blue {
                        backgroundColor = .red
                    }else{
                        backgroundColor = .blue
                    }
                }
            } message: {
                Text("Are you sure you want to change the color of this background?")
            }
        }

    }
}

#Preview {
    AlertDialogLView()
}
