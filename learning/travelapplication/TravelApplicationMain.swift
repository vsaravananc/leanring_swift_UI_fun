//
//  TravelApplicationMain.swift
//  learning
//
//  Created by Saravanan V on 27/09/26.
//

import SwiftUI

struct TravelApplicationMain: View {
    var body: some View {
        ZStack(alignment:.top){
            VStack(alignment:.leading,spacing: 20){
                Spacer()
                Text("Winter Vacation Trips")
                    .font(.system(size: 42))
                    .fontWeight(.medium)
                    .multilineTextAlignment(.leading)
                
                Text("Enjoy your winter vacations with warmth and amazing sightseeing on the mountains. Enjoy the best experience with us!")
                    .font(.title3)
                    .fontWeight(.regular)
                    .foregroundStyle(.secondary)
                
                NavigationLink(
                    destination: {
                    TravelApplicationHome()
                    },
                    label: {
                    HStack {
                        Text("Book Now")
                            Image(systemName: "arrow.right")
                    }.font(.headline)
                        .foregroundColor(.white)
                        .padding(.horizontal,25)
                        .frame(height: 50)
                        .background(Color.purple)
                        .cornerRadius(50)
                })

                
            }.padding(.horizontal)
            Rectangle()
                .fill(Color.purple.opacity(0.5))
                .frame(height: UIScreen.main.bounds.height * 0.6)
                .clipShape(RoundedRectangle(cornerRadius: 40))
            
        }.ignoresSafeArea(edges:.top)
    }
}

#Preview {
    TravelApplicationMain()
}
