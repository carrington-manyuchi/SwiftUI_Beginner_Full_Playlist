//
//  PickersBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/10.
//

import SwiftUI

struct PickersBootcamp: View {
    
    @State var selection: String = "1"
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Text("Age:")
                    Text(selection)
                }
                
                Picker(selection: $selection) {
                    ForEach(46..<50) { number in
                        Text("\(number)")
                            .tag("\(number)")
                    }
                } label: {
                    Text("Picker")
                }
                .pickerStyle(.menu)
            }
        }
    }
}

#Preview {
    PickersBootcamp()
}
