//
//  ColorsBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/03.
//

// Adaptive colors
// Color Picker

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
                //Color.primary
//                Color(uiColor: .secondarySystemBackground)
                Color("CustomColor", bundle: nil)
            )
            .frame(width: 300, height: 200)
//            .shadow(radius: 10)
//            .shadow(color: .red, radius: 10, x: -20, y: -20)
            .shadow(color: Color("CustomColor").opacity(0.8), radius: 15, x: -1, y: 8)
        
    }
}

#Preview {
    ColorsBootcamp()
}
