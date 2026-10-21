//
//  AppStorageView.swift
//  learning
//
//  Created by Saravanan V on 19/10/26.
//

import SwiftUI

/// two type of storage
/// UserDefaults , AppStorage

struct AppStorageView: View {
//    @State private var userName: String?
     @AppStorage("userName") var userName: String?
    var body: some View {
        NavigationStack {
            VStack(spacing: 8) {
                if let name = userName{
                    Text(name)
                        .font(.headline)
                        .fontWeight(.bold)
                }
                Button("Save".uppercased()) {
                    userName = "SwiftUI is Great"
                }
                
                NavigationLink("Secondary AppStorage") {
                    SecondaryAppStorageView()
                }
            }
        }
    }
}

struct SecondaryAppStorageView: View {
    @AppStorage("userName") var secondaryUserName: String?
    var body: some View {
        VStack(spacing: 8) {
            if let name = secondaryUserName{
                Text(name)
                    .font(.headline)
                    .fontWeight(.bold)
            }
        }
    }
}

#Preview {
    AppStorageView()
}
