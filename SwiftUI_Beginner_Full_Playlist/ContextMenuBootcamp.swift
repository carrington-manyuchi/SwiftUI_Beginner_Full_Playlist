//
//  ContextMenuBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/10.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State var backgroundColor: Color = .red
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftful Thinking")
                .font(.headline)
            Text("How to use Context Menu")
                .font(.subheadline)
        }
        .foregroundStyle(.white)
        .padding(30)
        .background(backgroundColor)
        .clipShape(
            RoundedRectangle(cornerRadius: 30)
        )
        .shadow(color: .black.opacity(0.3), radius: 10, x: 10, y: 10.0)
        .contextMenu(menuItems: {
            Button {
                backgroundColor = .yellow
            } label: {
                HStack {
                    Text("Share")
                    Image(systemName: "flame.fill")
                }
            }
            
            Button {
                backgroundColor = .purple
            } label: {
                HStack {
                    Text("Report")
                }
            }
            
            Button {
                backgroundColor = .green
            } label: {
                HStack {
                    Text("Like")
                    Image(systemName: "heart.fill")
                }
            }

            Text("Menu Item 1")
            
        })
        
    }
}

#Preview {
    ContextMenuBootcamp()
}
