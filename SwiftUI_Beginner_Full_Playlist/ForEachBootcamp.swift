//
//  ForEachBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/05.
//  They are basically loops

import SwiftUI

struct ForEachBootcamp: View {
    
    let data: [String] = ["Hi", "You"]
    let myString: String = "Hello"
    
    var body: some View {
//        VStack {
//            ForEach(0..<10) { index in
//                HStack {
//                    Circle()
//                        .frame(width: 30, height: 30)
//                    Text("Text is: \(index)")
//                }
//            }
//        }
        
        VStack {
            ForEach(data.indices) { index in
                Text("\(data[index]): \(index)")
            }
        }
    }
}

#Preview {
    ForEachBootcamp()
}
