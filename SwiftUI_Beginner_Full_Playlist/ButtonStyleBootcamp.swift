//
//  ButtonStyleBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/11.
//

import SwiftUI

struct ButtonStyleBootcamp: View {
    var body: some View {
        VStack {
            
            Button("Button Titile") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.plain)
            
            
            Button("Button Titile") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.bordered)
            
            
            Button("Button Titile") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.extraLarge)
            .buttonStyle(.borderedProminent)
            
            
            Button("Button Title") {
                
            }
           
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.red)
            .buttonBorderShape(.roundedRectangle(radius: 20))
           
            
        }
        .padding()
    }
        
}


#Preview {
    ButtonStyleBootcamp()
}
