//
//  SheetTransitionAnimationView.swift
//  learning
//
//  Created by Saravanan V on 25/09/26.
//

import SwiftUI

struct SheetTransitionAnimationView: View {
    
    @State var showSheet = false
    
    var body: some View {
        ZStack{
            Color.blue.ignoresSafeArea()
            VStack{
                Button("Show Sheet"){
                    showSheet.toggle()
                }
                .font(.largeTitle)
                .foregroundStyle(.white)
                .fontWeight(.medium)
                Spacer()
            }
            
//            .sheet(isPresented: $showSheet) {
//                SecondaryView(isPresented: $showSheet)
//            }
            
//            if showSheet {
//                SecondaryView(isPresented: $showSheet)
//                    .transition(.move(edge: .bottom))
//            }
            
            SecondaryView(isPresented: $showSheet)
                .clipShape(RoundedRectangle(cornerRadius: 20)).ignoresSafeArea()
                .offset(y: showSheet ? 0 : UIScreen.main.bounds.height)
                .animation(.spring, value: showSheet)
                .padding(.top,8)
                
            
        }
    }
}

struct SecondaryView : View {
    
    @Binding var isPresented: Bool
    
    var body: some View {
        ZStack{
            Color.red.ignoresSafeArea()
            VStack{
                Button("Close Sheet"){
                   isPresented = false
                }
                .font(.largeTitle)
                .foregroundStyle(.white)
                .fontWeight(.medium)
                .padding(.top,10)
                Spacer()
            }
        }
    }
}

#Preview {
    SheetTransitionAnimationView()
}
