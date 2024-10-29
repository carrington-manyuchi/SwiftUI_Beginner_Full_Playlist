//
//  ToolbarBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/12.
//

import SwiftUI

struct ToolbarBootcamp: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.indigo
                    .ignoresSafeArea()
                
                Text("HEY HEY ")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .bold()
            }
            .navigationTitle("TooolBar")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Image(systemName: "heart.fill")
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "gear")
                }
                
                
                ToolbarItem(placement: .bottomBar) {
                    Image(systemName: "book.circle")
                }
            }
            .foregroundStyle(.white)
            .font(.title)
        }
    }
}

#Preview {
    ToolbarBootcamp()
}
