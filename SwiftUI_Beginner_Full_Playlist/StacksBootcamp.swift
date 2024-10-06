//
//  StacksBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/04.
//
/// Stacks makes it easy in SwiftUI to align elements onto the screen
/// Whether we wnt them to go from Left to Right, Top to Bottom, front to back or vice versa
/// HStack, VStack, ZStack which is Z-index,
/// We can change their frames, spacing,  alignment, their height etc
/// We can also put stacks on stack on stacks (Nested Stacks)
/// VStacks always come with default spacing of 8.
///  Alignments always comes as default at center

import SwiftUI

struct StacksBootcamp: View {
    var body: some View {
        //        VStack {
        //            Rectangle()
        //                .fill(Color.red)
        //                .frame(width: 100, height: 100)
        //
        //            Rectangle()
        //                .fill(Color.green)
        //                .frame(width: 100, height: 100)
        //
        //            Rectangle()
        //                .fill(Color.orange)
        //                .frame(width: 100, height: 100)
        //        }
        
        //        ZStack {
        //            Rectangle()
        //                .fill(Color.yellow)
        //                .frame(width: 350, height: 500)
        //
        //            VStack {
        //                Rectangle()
        //                    .fill(Color.red)
        //                    .frame(width: 150, height: 150)
        //
        //
        //                Rectangle()
        //                    .fill(Color.green)
        //                    .frame(width: 100, height: 100)
        //
        //                HStack {
        //                    Rectangle()
        //                        .fill(Color.purple)
        //                    .frame(width: 50, height: 50)
        //
        //                    Rectangle()
        //                        .fill(Color.pink)
        //                    .frame(width: 75, height: 75)
        //
        //                    Rectangle()
        //                        .fill(Color.blue)
        //                    .frame(width: 25, height: 25)
        //                }
        //            }
        //        }
        
        
//        VStack(alignment: .center, spacing: 20) {
//            Text("5")
//                .font(.largeTitle)
//                .underline()
//            Text("Items in your cart")
//                .font(.caption)
//                .foregroundStyle(.gray)
//
//        }
        
        
        VStack(spacing: 50) {
            ZStack {
                Circle()
                    .frame(width: 100, height: 100)
                
                Text("1")
                    .font(.title)
                    .foregroundStyle(.white)
            }
            
            Text("1")
                .font(.title)
                .foregroundStyle(.white)
                .background(
                    Circle()
                        .frame(width: 100, height: 100)
                )
        }
    }
}

#Preview {
    StacksBootcamp()
}
