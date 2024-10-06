//
//  GradientBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/03.
//

import SwiftUI

struct GradientBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                Color.red
//                LinearGradient(gradient:
//                                Gradient(colors: [Color(uiColor: .secondarySystemBackground), Color(uiColor: .green),]),
//                               startPoint: .topLeading,
//                               endPoint: .bottom)
                
//                RadialGradient(gradient:
//                                Gradient(colors: [Color.red, Color.blue]),
//                               center: .leading,
//                               startRadius: 5,
//                               endRadius: 400)
                
                
                AngularGradient.init(gradient:
                                        Gradient(colors: [Color.red, Color.blue]),
                                     center: .topLeading,
                                     angle: .degrees(225))
            )
            .frame(width: 300, height: 200)
    }
}

#Preview {
    GradientBootcamp()
}
