//
//  AsyncImageLView.swift
//  learning
//
//  Created by Saravanan V on 21/10/26.
//

import SwiftUI

struct AsyncImageLView: View {
    let url : URL = URL(string: "https://fastly.picsum.photos/id/1083/500/500.jpg?hmac=ILROu3Z8eG0OP1PphlKD-Loz3EKxs0gxqYi7ycVjvEE")!
    var body: some View {
//        AsyncImage(url: url)
//        AsyncImage(url: url) { returnImage in
//            returnImage
//                .resizable()
//                .frame(width: 200, height: 200)
//        } placeholder: {
//            ProgressView()
//        }
        
        ZStack(alignment:.bottom) {
            AsyncImage(url: url) { AsyncImagePhase in
                switch AsyncImagePhase {
                case .empty:
                    ProgressView()
                case .success(let image):
                    image.resizable()
                        .scaledToFill()
                case .failure(_):
                    Image(systemName: "questionmark")
                        .font(.title)
                @unknown default:
                    Image(systemName: "questionmark")
                        .font(.title)
                }
            }
            
            RoundedRectangle(cornerRadius: 50)
                .fill(.thickMaterial)
                .frame(height: 375)
                .padding(.horizontal)
            
        }.ignoresSafeArea()
            
    }
}

#Preview {
    AsyncImageLView()
}
