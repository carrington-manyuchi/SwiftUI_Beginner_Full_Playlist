//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/04.
//
/// Background goes behind the object
/// Overlay goes to the front of the object


import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
//        Text("Hello, Backgrounds!")
//            .background(
////                LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
//                Circle()
//                    .fill(
//                        LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
//                    )
//                    .frame(width: 110, height: 110)
//            )
//            .background(
//                Circle()
//                    .fill(
//                    LinearGradient(gradient: Gradient(colors: [Color.blue, Color.red]), startPoint: .leading, endPoint: .trailing)
//                    )
//                    .frame(width: 120, height: 120)
//            )
        
        
//        ****Overlays***
//        Circle()
//            .fill(Color.pink)
//            .frame(width: 100, height: 100)
//            .overlay(
//                Text("1")
//                    .font(.largeTitle)
//                    .foregroundStyle(.white)
//            )
//            .background(
//                Circle()
//                    .fill(Color.blue)
//                    .frame(width: 110, height: 110)
//            )
        
        
//        Rectangle()
//            .frame(width: 100, height: 100)
//            .overlay(
//                Rectangle()
//                    .fill(Color.blue)
//                    .frame(width: 50, height: 50)
//            )
//            .background(
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width: 150, height: 150)
//            )
        
        
        Image(systemName: "heart.fill")
            .font(.system(size: 50))
            .foregroundStyle(.red)
            .background(
                Circle()
                    .fill(Color.teal)
                    .frame(width: 100, height: 100)
                    .shadow(color: .teal.opacity(0.7), radius: 2, x: 0.5, y: 5)
                    .overlay(
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 35, height: 35)
                            .overlay(
                                Text("5")
                                    .font(.headline)
                                    .foregroundStyle(.white)
                            )
                            .shadow(color: .teal.opacity(0.7), radius: 2, x: 5, y: 3)
                        , alignment: .bottomTrailing
                    )
                
            )
            
    }
}

#Preview {
    BackgroundAndOverlayBootcamp()
}
