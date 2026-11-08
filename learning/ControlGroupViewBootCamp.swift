//
//  ControlGroupViewBootCamp.swift
//  learning
//
//  Created by Saravanan V on 08/11/26.
//

import SwiftUI

struct ControlGroupViewBootCamp: View {
    var body: some View {
        Menu("Click me") {
            ControlGroup{
                Button("Book Mark"){}
                Button("Download"){}
            }
            Menu("Report") {
                Button("Sixual"){}
                Button("Not safe"){}
            }
            Button("Share"){}
            Button("Reply"){}
           
        }
    }
}

#Preview {
    ControlGroupViewBootCamp()
}
