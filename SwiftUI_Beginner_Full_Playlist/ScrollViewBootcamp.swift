//
//  ScrollViewBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/05.
//

/// ScrollView can be used horizontally or vertically

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
//        ScrollView {
//            VStack {
//                
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(width: 300, height: 300)
//                }
//            }
//        }
//        .scrollIndicators(.hidden)
        
        
        
//        ScrollView(.horizontal) {
//            VStack {
//                HStack {
//                    ForEach(0..<10) { index in
//                        Rectangle()
//                            .fill(Color.yellow)
//                            .frame(width: 200, height: 200)
//                    }
//                }
//            }
//        }
        
        
        
        ScrollView {
            LazyVStack {
                ForEach(0..<10) { index in
                    ScrollView(.horizontal) {
                    LazyHStack {
                        ForEach(0..<10) { index in
                        RoundedRectangle(cornerRadius: 10.0)
                            .fill(Color.white)
                            .frame(width: 200, height: 150)
                            .shadow(radius: 10)
                            .padding()
                        }
                    }
                }
            }
            .scrollIndicators(.hidden)             }
        }
       
    }
}

#Preview {
    ScrollViewBootcamp()
}
