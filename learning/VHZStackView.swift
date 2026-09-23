//
//  VHZStackView.swift
//  learning
//
//  Created by Saravanan V on 12/09/26.
//

import SwiftUI

struct VHZStackView: View {
    var body: some View {
        VStack(spacing: 50) {
            ZStack(alignment:.topLeading){
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.blue)
                    .frame(width: 150, height: 150)
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.pink)
                    .frame(width: 100, height: 100)
            }
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.pink)
                .frame(width: 100,height: 100)
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.blue)
                        .frame(width: 120,height: 120)
                        .overlay(alignment:.center,content: {
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.white)
                                .frame(width: 110,height: 110)
                        }),
                    alignment: .center
                )
        }
    }
}

#Preview {
    VHZStackView()
}
