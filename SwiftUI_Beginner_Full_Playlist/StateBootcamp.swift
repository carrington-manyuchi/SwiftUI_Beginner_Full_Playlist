//
//  StateBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/05.
//

/// State property wrapper
///  We can give a variable a stae property wrapper that's basically telling the view to watch the state of this variable bcause if this  variable changes we might need to change and update the view

import SwiftUI

struct StateBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var myTitle: String = "My Title"
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
            //Background
            backgroundColor
                .ignoresSafeArea()
            
            // Content
            VStack(spacing: 20, content: {
                Text(myTitle)
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20, content: {
                    
                    Button("Button 1") {
                        backgroundColor = .red
                        myTitle = "Button One was Pressed"
                         count += 1
                    }
                    
                    Button("Button 2") {
                        backgroundColor = .purple
                        myTitle = "Button Two was Pressed"
                        count -= 1
                    }
                })
            })
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    StateBootcamp()
}
