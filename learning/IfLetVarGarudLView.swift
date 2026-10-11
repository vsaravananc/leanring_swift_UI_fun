//
//  IfLetVarGarudLView.swift
//  learning
//
//  Created by Saravanan V on 10/10/26.
//

import SwiftUI

struct IfLetVarGarudLView: View {
    
    @State private var description: String? = ""
    @State private var isLoading : Bool = false
    @State private var userId : String? = "123"
    
    var body: some View {
        NavigationStack{
            ScrollView{
                
                if description != nil && !description!.isEmpty {
                    Text(description!)
                }
                
                if isLoading {
                    ProgressView()
                }
                
                
            }.navigationTitle("If / Garud")
                .onAppear{
                    fetchData()
                }
        }
    }
    
    func fetchData() {
        guard let userId = userId else {
            description = "User ID is missing"
            return
        }
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.description = "Data fetched successfully \(userId)"
            isLoading = false
        }
    }
}

#Preview {
    IfLetVarGarudLView()
}
