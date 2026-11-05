//
//  AnyLayoutLView.swift
//  learning
//
//  Created by Saravanan V on 05/11/26.
//

import SwiftUI

struct AnyLayoutLView: View {
    @Environment(\.verticalSizeClass) var verticalSizeClass
    var body: some View {
        VStack{
            Text("Hello, World! : \(verticalSizeClass.debugDescription)")
            var  layout = verticalSizeClass == .compact ? AnyLayout(HStackLayout()) : AnyLayout(VStackLayout())
                
                layout{
                Text("Team 1")
                    Text("Team 1")
                    Text("Team 1")
                    Text("Team 1")
            }
        }
    }
}

#Preview {
    AnyLayoutLView()
}
 
