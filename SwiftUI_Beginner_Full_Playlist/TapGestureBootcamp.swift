//
//  TapGestureBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/11.
//
///

import SwiftUI

struct TapGestureBootcamp: View {
    
    @State var isSelected: Bool = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 40.0) {
                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(height: 200)
                        .foregroundStyle(isSelected ? Color.green : Color.red)
                    
                    Button(action: {
                        isSelected.toggle()
                    }, label: {
                        Text("Button")
                            .foregroundStyle(.white)
                            .frame(height: 55)
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .clipShape(RoundedRectangle(cornerRadius: 25.0))
                    })
                    
                    Text("Tap Gesture")
                        .foregroundStyle(.white)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 25.0))
//                        .onTapGesture {
//                            isSelected.toggle()
//                        }
                        .onTapGesture(count: 2, perform: {
                            isSelected.toggle()
                        })
                }
                .padding()
                .navigationTitle("TapGesture")
            }
        }
    }
}
#Preview {
    TapGestureBootcamp()
}
