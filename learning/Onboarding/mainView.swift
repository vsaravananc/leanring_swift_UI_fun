//
//  mainView.swift
//  learning
//
//  Created by Saravanan V on 19/10/26.
//

import SwiftUI

struct mainView: View {
    var body: some View {
        ZStack{
            
           RadialGradient(colors: [
            .blue,.pink
           ],
            center: .top,
            startRadius: 500/2,
            endRadius: 500)
           .ignoresSafeArea(.all)
            
            
            
        }
    }
}

#Preview {
    mainView()
}
