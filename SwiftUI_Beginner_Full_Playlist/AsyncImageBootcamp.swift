//
//  AsyncImageBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/11.
//

import SwiftUI

struct AsyncImageBootcamp: View {
    
    let url = URL(string: "https://picsum.photos/400")
    
    var body: some View {
        
//        AsyncImage(url: url) { returnImage in
//            returnImage
//                .resizable()
//                .scaledToFit()
//                .frame(width: 100, height: 100)
//                .clipShape(RoundedRectangle(cornerRadius: 15))
//        } placeholder: {
//            ProgressView()
//        }
        
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let image):
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
            case .failure(let error):
                Image(systemName: "questionmark")
                    .font(.headline)
             default:
                Image(systemName: "questionmark")
                    .font(.headline)
            }
        }
    }
}

#Preview {
    AsyncImageBootcamp()
}
