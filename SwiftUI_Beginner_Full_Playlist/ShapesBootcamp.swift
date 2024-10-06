//
//  ShapesBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/03.
//

// SwiftUI has a couple of Shapes that are preloaded
// We gonna use and make them look really cool
// We can use shapes to shape other views for example if we
// want a circular button or image

// Types of Shapes available -> Circle,
// Useful behind a text or button



import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
//        Circle()
//        Ellipse()
//        Rectangle()
//        Capsule(style: .continuous)

        RoundedRectangle(cornerRadius: 15)
//            .fill(Color.red)
//            .foregroundStyle(.pink)
//            .stroke(Color.red)
//            .stroke(.blue, lineWidth: 25)
//            .stroke(.orange, style: StrokeStyle(lineWidth: 30, lineCap: .round, dash: [50]))
//            .trim(from: 0.2, to: 1.0)
//            .stroke(Color.blue, lineWidth: 2)
        
        
            .frame(width: 300, height: 200)
            
    }
}

#Preview {
    ShapesBootcamp()
}
