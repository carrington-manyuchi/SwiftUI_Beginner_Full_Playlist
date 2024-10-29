//
//  NavigationStackBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/12.
//

import SwiftUI

struct NavigationStackBootcamp: View {
    
    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach"
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 40) {
                    
                    ForEach(fruits, id: \.self) { fruit in
                        NavigationLink(value: fruit) {
                            Text(fruit)
                        }
                    }
                    
                    
                    ForEach(0..<10) { x in
                        NavigationLink(value: x) {
                            Text("Screen Number: \(x)")
                        }
                    }
                }
            }
            .navigationTitle("Nav Bootcamp")
            .navigationDestination(for: Int.self) { value in
                MySecondScreen(value: value)
            }
            .navigationDestination(for: String.self) { value in
                Text("Another screen of:  \(value.capitalized)")
            }
        }
    }
}

struct MySecondScreen: View {
    let value: Int
    
    init(value: Int) {
        self.value = value
    }
    
    var body: some View {
        Text("Screen Number \(value)")
    }
}

#Preview {
    NavigationStackBootcamp()
}
