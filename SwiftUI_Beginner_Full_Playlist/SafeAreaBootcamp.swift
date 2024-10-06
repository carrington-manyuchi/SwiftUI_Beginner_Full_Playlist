//
//  SafeAreaBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/05.
//
///  ignoresSafeArea()
///   edgeIgnoringSafeArea()
///    How we can stay within safe areas
///    RUle of thumb -->
///    If it is the content the user needs to either see, press or touch then its has to stay withing the safe area
///    Backgrounds layers we can extend and ignore the safe area

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
  
//        //Foreground
//        ZStack {
//            // Background
//            Color.blue
//                .ignoresSafeArea()
//            Text("Hello, World!")
//                .frame(maxWidth: .infinity, maxHeight: .infinity)
//                .background(Color.red)
//        }
        
        ScrollView {
            Text("Title goes here")
                .font(.largeTitle)
                .frame(maxWidth: .infinity)
            
            ForEach(0..<10) { index in
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(Color.white)
                    .frame(height: 150)
                    .shadow(radius: 10)
                    .padding(20)
            }
        }
        .background(Color.red)
            
    }
}

#Preview {
    SafeAreaBootcamp()
}
