//
//  DarkModeBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/10.
//

import SwiftUI

struct DarkModeBootcamp: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    Text("This color is primary")
                        .foregroundStyle(.primary)
                    Text("This color is secondary")
                        .foregroundStyle(.secondary)
                    Text("This color is black")
                        .foregroundStyle(.black)
                    Text("This color is white")
                        .foregroundStyle(.white)
                }
            }
        }
    }
}

#Preview {
        DarkModeBootcamp()
}
