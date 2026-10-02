//
//  InstagramView.swift
//  learning
//
//  Created by Saravanan V on 29/09/26.
//

import SwiftUI

struct InstagramView: View {
    
    @State private var showProfile: Bool = false
    
    var body: some View {
        ZStack(alignment:.bottom){
            VStack{

                HStack{
                    Circle()
                        .frame(width: 40, height: 40)
                    Text("User Name")
                    Spacer()
                    Button {
                        withAnimation{
                            showProfile.toggle()
                        }
                    } label: {
                        Image(systemName: "ellipsis")
                            .font(.title2)
                    }.tint(.primary)
                }
                RoundedRectangle(cornerRadius: 12)
                    .aspectRatio(1, contentMode: .fit)
                Spacer()
            }.padding(.horizontal)
                .onTapGesture {
                    if showProfile {
                        withAnimation{
                            showProfile = false
                        }
                    }
                }
            
            if showProfile {
                List{
                    RoundedRectangle(cornerRadius: 8)
                        .fill(.primary)
                        .frame(height: 250)
                        .padding()
                    Text("Profile")
                    Text("Logout")
                    Text("Settings")
                }.background(.blue)
                    .frame(maxWidth: .infinity, maxHeight: UIScreen.main.bounds.height * 0.5)
                    .transition(.move(edge: .bottom))
                    .shadow(color:.primary,radius: 12)
                    .clipShape(RoundedRectangle(cornerRadius: 24))
                    
            }
        }.ignoresSafeArea(edges :[.bottom])
        
    }
}

#Preview {
    InstagramView()
}
