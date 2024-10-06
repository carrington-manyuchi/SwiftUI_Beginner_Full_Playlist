//
//  PaddingAndSpacerBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/05.
//
//

import SwiftUI

struct PaddingAndSpacerBootcamp: View {
    var body: some View {
//        Text("Hello, World! This is fun")
//            .background()
//            .padding()
//            .padding(.horizontal, 20)
//            .padding(.vertical, 10)
//            .background(Color.blue)
        
        
//        Text("Hello World")
//            .font(.largeTitle)
//            .fontWeight(.semibold)
//            .frame(maxWidth: .infinity, alignment: .leading)
//            .background(Color.red)
//            .padding()
        
        
        VStack(alignment: .leading) {
            Text("Hello World")
                .font(.largeTitle)
            .fontWeight(.semibold)
            
            Text("This is the description of what will be doing on the screen. It is multiple lines and we will align the text to the leading edge")
        }
        .foregroundStyle(.white)
        .padding()
        .background(
            Color.gray
               
        )
       // .presentationCornerRadius(25)
        .clipShape(
            RoundedRectangle(cornerRadius: 25.0)
            
        )
        .shadow(color: .black.opacity(0.3), radius: 10, x: 010, y: 10.0)
        .padding(.horizontal, 16)
    }
}

#Preview {
    PaddingAndSpacerBootcamp()
}
