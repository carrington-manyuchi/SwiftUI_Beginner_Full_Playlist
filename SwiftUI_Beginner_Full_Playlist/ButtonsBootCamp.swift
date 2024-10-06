//
//  ButtonsBootCamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/05.
//

import SwiftUI

struct ButtonsBootCamp: View {
    
    
   @State var title: String = "This is my title"
    
    var body: some View {
       
        VStack(spacing: 20, content: {
            Text(title)
            Button("Press Me") {
                self.title = "Button was Pressed"
            }

            .buttonBorderShape(.roundedRectangle(radius: 25))
            //.foregroundStyle(.white)
            .tint(.red)
            .padding(.vertical, 10)
            .padding(.horizontal, 50)
            .background(
                RoundedRectangle(cornerRadius: 10.0)
                    .stroke(Color.blue, lineWidth: 1.0)
            )
            
            
            Button(action: {
                self.title = "Button #2 was pressed"
            }, label: {
                Text("Save")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .shadow(radius: 10)
                            .presentationCornerRadius(10.0)
                    )
            })
            
            Button(action: {
                self.title = "Button mumber 3 pressed!!"
            }, label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundStyle(Color.red)
                    )
                
            })
            
            
            Button(action: {
                self.title = "Button 4 was pressed"
            }, label: {
                Text("Finish")
                    .font(.caption)
                    .bold()
                    .foregroundStyle(.gray)
                    .padding()
                    .padding(.horizontal, 50)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 1)
                    )
                
            })
            
        })
    }
}

#Preview {
    ButtonsBootCamp()
}
