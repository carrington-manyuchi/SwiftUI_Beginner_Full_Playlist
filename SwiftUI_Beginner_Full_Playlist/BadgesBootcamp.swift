//
//  BadgesBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/11.
//

import SwiftUI

struct BadgesBootcamp: View {
    var body: some View {
        TabView {
            Color.red
                .tabItem {
                    Image(systemName: "heart.fill")
                }
                .badge(5)
        }
    }
}

#Preview {
    BadgesBootcamp()
}
