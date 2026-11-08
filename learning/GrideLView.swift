//
//  GrideLView.swift
//  learning
//
//  Created by Saravanan V on 08/11/26.
//

import SwiftUI

struct GrideLView: View {
    var body: some View {
        Grid(){
            GridRow{
                Color.red.opacity(0.5)
                    .background(in: RoundedRectangle(cornerRadius: 4))
                    .gridCellColumns(3)
            }
            GridRow{
                Color.green.opacity(0.5).clipShape(RoundedRectangle(cornerRadius: 2))
                Color.red.opacity(0.5)
                    .gridCellColumns(2).clipShape(RoundedRectangle(cornerRadius: 2))
            }
            GridRow{
                Color.red.opacity(0.5).clipShape(RoundedRectangle(cornerRadius: 2))
                Color.blue.opacity(0.5).clipShape(RoundedRectangle(cornerRadius: 2))
                Color.pink.opacity(0.5).clipShape(RoundedRectangle(cornerRadius: 2))
            }
            GridRow{
                
                Color.red.opacity(0.5)
                    .gridCellColumns(2).clipShape(RoundedRectangle(cornerRadius: 2))
                Color.orange.opacity(0.5).clipShape(RoundedRectangle(cornerRadius: 2))
            }
        }.padding(.horizontal,6)
    }
}

#Preview {
    GrideLView()
}
