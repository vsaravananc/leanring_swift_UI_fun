//
//  TabViewLView.swift
//  learning
//
//  Created by Saravanan V on 07/10/26.
//

import SwiftUI

struct TabViewLView: View {
    var body: some View {
        TabView {
            Tab("Requests", systemImage: "paperplane") {
                RoundedRectangle(cornerRadius: 12)
                    .fill(Color.green)
            }


            Tab("Account", systemImage: "person.crop.circle.fill") {
                RoundedRectangle(cornerRadius: 12)
                    .fill(Color.pink)
            }


            TabSection("Messages") {
                Tab("Received", systemImage: "tray.and.arrow.down.fill") {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color.orange)
                }


                Tab("Sent", systemImage: "tray.and.arrow.up.fill") {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color.red)
                }


                Tab("Drafts", systemImage: "pencil") {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color.blue)
                }
            }
        }
        .frame(height:250)
        .padding(.horizontal)
        .tabViewStyle(.page)
    }
}

#Preview {
    TabViewLView()
}
