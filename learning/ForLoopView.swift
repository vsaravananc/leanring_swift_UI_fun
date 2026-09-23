//
//  ForLoopView.swift
//  learning
//
//  Created by Saravanan V on 14/09/26.
//

import SwiftUI

struct ForLoopView: View {
    let data : [String] = ["hey"]
    var body: some View {
        VStack{
            ForEach(data.indices,id:\.self) { index in
                Text("\(data[index])")
            }
        }
    }
}

#Preview {
    ForLoopView()
}
