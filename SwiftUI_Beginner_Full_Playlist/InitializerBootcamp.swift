//
//  InitializerBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/05.
//
/// init -> A function that runs to setup your view
///  We can customise these inits with our custom variables
///  When developing complex and advanced apps it is always important to use initialisers.
///   Enums
///   An easy way in our code to categorise certain things

import SwiftUI

struct InitializerBootcamp: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
//    init(backgroundColor: Color, count: Int, title: String) {
//        self.backgroundColor = backgroundColor
//        self.count = count
//        self.title = title
//    }
    
//    init(count: Int, title: String) {
//        self.count = count
//        self.title = title
//        
//        if title == "Apples" {
//            self.backgroundColor = .red
//        } else {
//            backgroundColor = .orange
//        }
//    }
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .apple {
            self.title = "Apples"
            self.backgroundColor = .red
        } else {
            self.title = "Oranges"
            self.backgroundColor = .orange
        }
    }
    
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        VStack(spacing: 12) {
            Text("\(count)")
                .font(.largeTitle)
                .underline()
            Text("\(title)")
                .font(.headline)
        }
        .foregroundStyle(.white)
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .shadow(color: .black.opacity(0.5), radius: 5, x: 0.0, y: 0.0)
    }
}

#Preview {
    HStack {
        InitializerBootcamp(count: 5, fruit: .orange)
        InitializerBootcamp(count: 12, fruit: .apple)
    }
}
