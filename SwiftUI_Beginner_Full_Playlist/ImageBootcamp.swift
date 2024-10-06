//
//  ImageBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/04.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("prado")
//            .renderingMode(.template)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 300)
//            .foregroundStyle(.red.opacity(0.1))
//            .clipped()
//            .cornerRadius(150)
            .clipShape(
                Circle()
//                RoundedRectangle(cornerRadius: 25.0)
//            Ellipse()
            )
    }
}

#Preview {
    ImageBootcamp()
}
