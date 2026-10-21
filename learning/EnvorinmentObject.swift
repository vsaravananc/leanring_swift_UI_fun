//
//  SwiftUIView.swift
//  learning
//
//  Created by Saravanan V on 14/10/26.
//

import SwiftUI


class ServiceInEnvorinment: ObservableObject {
    @Published var count: Int = 50
}

struct EnvorinmentObject: View {
    @StateObject var serviceInEnvorinment: ServiceInEnvorinment = ServiceInEnvorinment()
    var body: some View {
        NavigationStack{
            VStack{
                List{
                    ForEach(0..<10){ index in
                        NavigationLink(
                            destination: SecondaryViewInEnvorinment()) {
                            Text("\(index)")
                        }
                    }
                }
            }
            .navigationTitle(Text("EnvorinmentObject"))
        }.environmentObject(serviceInEnvorinment)
    }
}


struct SecondaryViewInEnvorinment: View {
    var body: some View {
        NavigationLink(destination: ThirdViewInEnvorinment(), label: {
            Text("Go to Third View")
        })
    }
}

struct ThirdViewInEnvorinment: View {
    @EnvironmentObject var serviceInEnvorinment: ServiceInEnvorinment
    var body: some View {
        Text("\(serviceInEnvorinment.count)")
            .font(.largeTitle)
            .fontWeight(.bold)
    }
}

#Preview {
    EnvorinmentObject()
}
