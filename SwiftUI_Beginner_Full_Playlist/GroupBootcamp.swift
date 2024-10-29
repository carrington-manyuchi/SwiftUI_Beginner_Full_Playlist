//
//  GroupBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/12.
//

import SwiftUI

struct GroupBootcamp: View {
    var body: some View {
        VStack(spacing: 40, content: {
            Text("Placeholder")
            Text("Hello, World!")
            Text("Hello, World!")
            
            Group {
                Text("Placeholder")
                Text("Hello, World!")
                Text("Hello, World!")
            }
        })
    }
}

#Preview {
    GroupBootcamp()
}
