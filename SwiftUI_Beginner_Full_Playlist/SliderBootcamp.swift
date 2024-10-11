//
//  SliderBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/10.
//

import SwiftUI

struct SliderBootcamp: View {
    
    @State var slideValue: Double = 3
    @State var color: Color = .red
    
    var body: some View {
        ZStack {
            VStack {
                Text("Rating: ")
                Text(
                    String(format: "%.1f", slideValue)
                )
                .foregroundStyle(color)
               // Slider(value: $slideValue)
               // Slider(value: $slideValue, in: 0...5)
                //Slider(value: $slideValue, in: 0...5, step: 0.5)
                Slider(value: $slideValue, in: 1...5, step: 0.5, label: {
                    
                }, minimumValueLabel: {
                    Text("1")
                }, maximumValueLabel: {
                    Text("5")
                }, onEditingChanged: { _ in
                    color = .green
                })
                    .tint(.red)
            }
        }
        .padding()
    }
}

#Preview {
    SliderBootcamp()
}
