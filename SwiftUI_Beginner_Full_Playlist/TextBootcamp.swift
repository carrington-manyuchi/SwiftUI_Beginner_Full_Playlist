//
//  TextBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/03.
// This is all about textModifiers colors, alignments, sizes etc


import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World!. ".lowercased())
//            .font(.body)
//            .fontWeight(.semibold)
//            .bold()
//            .underline(true, pattern: .solid, color: .brown)
//            .strikethrough(true, pattern: .dot, color: .red)
        
//            .font(.system(size: 24, weight: .semibold, design: .serif))
  
//            .baselineOffset(10)
//            .kerning(10)
            .foregroundStyle(.red)
            .multilineTextAlignment(.leading)
            .frame(width: 200, height: 200, alignment: .leading)
            .minimumScaleFactor(0.1)
        
    }
}

#Preview {
    TextBootcamp()
}
