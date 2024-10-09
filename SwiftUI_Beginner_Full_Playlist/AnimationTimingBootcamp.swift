//
//  AnimationCurves.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/09.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    
    @State var isAnimating: Bool = false

    
    var body: some View {
        VStack {
            Button("Button") {
                isAnimating.toggle()
                
            }
            Spacer()
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.gray)
                .frame(
                    width: isAnimating ?  350 : 50,
                    height: isAnimating ? 350 : 50)
                .animation(.easeIn, value: isAnimating)
            
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.gray)
                .frame(
                    width: isAnimating ?  350 : 50,
                    height: isAnimating ? 350 : 50)
               
                .animation(.spring(response: 3, dampingFraction: 0.7, blendDuration: 1), value: isAnimating)
                
            
            Spacer()
            
        }
    }
}

#Preview {
    AnimationTimingBootcamp()
}
