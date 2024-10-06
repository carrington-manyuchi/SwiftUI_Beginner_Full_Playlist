//
//  ExtractedSubViews.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/06.
//
/// Exttracting subviews

import SwiftUI

struct ExtractedSubViews: View {
    var body: some View {
        ZStack {
            Color.custom
                .ignoresSafeArea()
            contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack {
            MyItem(title: "Apples", count: 1, color: .red)
            MyItem(title: "Oranges", count: 10, color: .orange)
            MyItem(title: "Bananas ", count: 5, color: .yellow)
        }
    }
}

#Preview {
    ExtractedSubViews()
}

struct MyItem: View {
    let title: String
    let count: Int
    let color: Color
    var body: some View {
        VStack {
            Text("\(count)")
            Text("\(title)")
        }
        .padding()
        .background(color)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}
