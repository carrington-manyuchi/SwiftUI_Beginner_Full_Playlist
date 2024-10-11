//
//  TabViewBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/10.
//

import SwiftUI

struct TabViewBootcamp: View {
    
    @State var selectedTab: Int = 2
    let icons: [String] = [
        "heart.fill", "gear", "globe", "house.fill"
    ]
    
    var body: some View {
        
        TabView {
//            RoundedRectangle(cornerRadius: 25.0)
//                .foregroundStyle(.red)
//            RoundedRectangle(cornerRadius: 25.0)
//                .foregroundStyle(.yellow)
//            RoundedRectangle(cornerRadius: 25.0)
//                .foregroundStyle(.green)
//            RoundedRectangle(cornerRadius: 25.0)
//                .foregroundStyle(.teal)
            
            
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(30)
            }
            
        }
        .background(
            RadialGradient(gradient: Gradient(colors: [.red, .blue]), center: .center, startRadius: 5, endRadius: 300)
        )
        .frame(height: 300)
        .tabViewStyle(.page(indexDisplayMode: .always))
        
//        TabView(selection: $selectedTab ) {
//           
//            Homeview()
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }
//                .tag(0)
//            
//            Text("Browse Tab")
//                .tabItem {
//                    Image(systemName: "globe")
//                    Text("Browse")
//                }
//                .tag(1)
//            
//            Text("Profile Tab")
//                .tabItem {
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                }
//                .tag(2)
//            
//            Text("Settings Tab")
//                .tabItem {
//                    Image(systemName: "gear")
//                    Text("Settings")
//                }
//                .tag(3)
//        }
    }
}

#Preview {
    TabViewBootcamp()
}



struct Homeview: View {
    var body: some View {
        ZStack {
            Color.red
                .ignoresSafeArea( edges: .top)
            Text("Home Tab")
                .font(.largeTitle)
                .foregroundStyle(.white)
        }
    }
}
