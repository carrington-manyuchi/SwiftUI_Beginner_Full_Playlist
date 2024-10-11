//
//  ColorPickerBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/10.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    
    @State var backgroundColor: Color = .green
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            VStack {
                ColorPicker("Select a color", selection: $backgroundColor, supportsOpacity: true)
                    .padding()
                    .background(Color.black)
                    .foregroundStyle(.white)
                    .font(.headline)
                    .padding(50)
            }
        }
    }
}

#Preview {
    ColorPickerBootcamp()
}
