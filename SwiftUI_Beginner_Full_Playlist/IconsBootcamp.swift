//
//  IconsBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/03.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .resizable()
//            .scaledToFill()
            .scaledToFit()
        
//            .aspectRatio(contentMode: .fit)
//            .font(.title)
//            .font(.system(size: 200))
            .foregroundStyle(.green)
            .frame(width: 300, height: 300)
//            .clipped()
    }
}

#Preview {
    IconsBootcamp()
}
