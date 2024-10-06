//
//  ExtractedFunctions.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/05.
//
/// Extracting function and  View from the body view

import SwiftUI

struct ExtractedFunctions: View {
    
    @State var backgroundColor: Color = Color.teal
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            contentLayer
        }
    }
    
    var contentLayer: some View {
        VStack {
            Text("title")
                .font(.largeTitle)
                .foregroundStyle(.white)
            
            Button(action: {
                buttonPressed()
            }, label: {
                Text("Press Me")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .padding()
                    .background(Color.black)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            })
        }
    }
    
    func buttonPressed() {
        backgroundColor = .gray
    }
}

#Preview {
    ExtractedFunctions()
}
