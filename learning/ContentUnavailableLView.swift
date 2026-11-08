//
//  ContentUnavailableLView.swift
//  learning
//
//  Created by Saravanan V on 08/11/26.
//

import SwiftUI

struct ContentUnavailableLView: View {
    var body: some View {
        VStack{
            ContentUnavailableView(
                "No Data Found",
                systemImage: "heart.fill",
                description:Text( "No data found for this view")
            )
            ContentUnavailableView.search
        }
    }
}

#Preview {
    ContentUnavailableLView()
}
