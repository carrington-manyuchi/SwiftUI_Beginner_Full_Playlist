//
//  BackgroundMaterialsBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/11.
//

import SwiftUI

struct BackgroundMaterialsBootcamp: View {
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 30))
        }
        .ignoresSafeArea()
        .background(Image("theRock"))
    }
}

#Preview {
    BackgroundMaterialsBootcamp()
}
