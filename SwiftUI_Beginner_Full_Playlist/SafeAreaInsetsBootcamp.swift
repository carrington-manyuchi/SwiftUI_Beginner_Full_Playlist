//
//  SafeAreaInsetsBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/12.
//

import SwiftUI

struct SafeAreaInsetsBootcamp: View {
    var body: some View {
        NavigationStack {
            List(0..<10) { _ in
                Rectangle()
                    .frame(height: 250)
            }
            .navigationTitle("Safe Area Insets")
            .navigationBarTitleDisplayMode(.inline)
//            .overlay(alignment: .bottom) {
//                Text("Hi")
//                    .frame(maxWidth: .infinity)
//                    .background(Color.yellow)
//            }
            
            .safeAreaInset(edge: .top, alignment: .trailing, spacing: nil) {
                Text("Hi")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.yellow.ignoresSafeArea( edges: .bottom))
                  //  .clipShape(Circle())
                    //.padding()
            }
        }
    }
}

#Preview {
    SafeAreaInsetsBootcamp()
}
