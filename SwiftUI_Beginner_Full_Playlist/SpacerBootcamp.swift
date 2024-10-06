//
//  SpacerBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/05.
//
/// Spacer is super handy in SwiftUI.
///  We can add Spacer() between 2 objects to add space and push those object apart
///   We can use spacers horizontally and vertically
///    We can add multiple spacers  in a stack to create equal spacing between objects
///    We can use them to create layouts and formats coz you can  use it to push objects to the top,  bottom, left or right  of the of the screen
///    Default spacing is 8
///    Spacers has got 2 attributes i.e default and minimumLength

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
//        HStack(spacing: 0) {
//            Spacer()
//                .frame(height: 10)
//                .background(Color.orange)
//            Rectangle()
//                .frame(width: 50, height: 50)
//            
//            Spacer()
//                .frame(height: 10)
//                .background(Color.orange)
//            
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 50, height: 50)
//            
//            Spacer()
//                .frame(height: 10)
//                .background(Color.orange)
//            
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 50, height: 50)
//            
//            Spacer()
//                .frame(height: 10)
//                .background(Color.orange)
//            Spacer()
//                .frame(height: 10)
//                .background(Color.orange)
//        }
////        .background(Color.blue)
        ///
    
        VStack {
            HStack {
                Image(systemName: "xmark")
                Spacer()
                Image(systemName: "gear")
            }
            .font(.largeTitle)
            .padding(.horizontal)
        .background(Color.orange)
        }
        Spacer()
        
    }
}

#Preview {
    SpacerBootcamp()
}
