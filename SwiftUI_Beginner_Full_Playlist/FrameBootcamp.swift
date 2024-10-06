//
//  FrameBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/04.
//
/// We will be dealing with aligning objects on the screen
/// Every object added to the screen come with or has frames by default.
/// A Frame is jut the rectangular area that the object is in
/// Frames by default are clear thats why we cant see them so we have to add a bg color
///

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
//        Text("Hello, World!")
//            .background()
//           .frame(width: 300, height: 300, alignment: .center)
//            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
//            .background(Color.red)
        
        Text("Hello Again")
            .background(Color.red)
            .frame(height: 100, alignment: .top)
            .background(Color.orange)
            .frame(width: 150)
            .background(Color.purple)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.pink)
            .frame(height: 400)
            .background(Color.green)
            .frame(maxHeight: .infinity, alignment: .top)
            .background(Color.yellow)
        
        
    }
}

#Preview {
    FrameBootcamp()
}
