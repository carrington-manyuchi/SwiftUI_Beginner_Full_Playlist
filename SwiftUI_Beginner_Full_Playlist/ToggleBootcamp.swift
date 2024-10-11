//
//  ToggleBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/10.
//

import SwiftUI

struct ToggleBootcamp: View {
    
    @State var toggleIsOn: Bool = false
    
    var body: some View {
        VStack {
            
            HStack {
               Text("Status:")
                Text(toggleIsOn ? "Online" : "Offline")
                
            }
            .font(.largeTitle)
            Toggle(isOn: $toggleIsOn, label: {
                Text("Label")
            })
            .toggleStyle(SwitchToggleStyle(tint: Color.red))            
            Spacer()
        }
        .padding(50)
    }
}

#Preview {
    ToggleBootcamp()
}
