//
//  DataModelLView.swift
//  learning
//
//  Created by Saravanan V on 10/10/26.
//

import SwiftUI


struct UserModel : Identifiable{
    let id : UUID = UUID()
    let name : String;
    let email : String;
    let followers : Int;
}

struct DataModelLView: View {
    
    @State private var items: [UserModel] = [
        UserModel(name: "Saravanan", email: "@Saravanan12", followers: 100),
        UserModel(name: "praveen", email: "@praveen21", followers: 90),
        UserModel(name: "arul", email: "@arul43", followers: 34),
        UserModel(name: "pavi", email: "@pavi", followers: 10)
    ]
    
    var body: some View {
        NavigationStack{
            VStack{
                List{
                    ForEach(items) { user in
                        HStack(spacing: 8){
                            Circle()
                                .fill(.blue)
                                .frame(width: 40, height: 40)
                            VStack(alignment: .leading){
                                HStack{
                                    Text(user.name)
                                        .font(.headline)
                                    if user.followers > 10{
                                        Image(systemName: "checkmark.seal.fill")
                                            .resizable()
                                            .frame(width: 15, height: 15)
                                            .foregroundStyle(.blue)
                                    }
                                }
                                Text(user.email)
                                    .font(.caption)
                                    .foregroundStyle(.gray)
                            }
                            Spacer()
                            VStack(alignment: .center){
                                Text("\(user.followers)")
                                    .font(.headline)
                                Text("Followers")
                                    .font(.caption)
                                    .foregroundStyle(.gray)
                            }
                            
                        }.padding(.vertical,2)
                    }
                }
            }.navigationTitle("Users")
        }
    }
}

#Preview {
    DataModelLView()
}
