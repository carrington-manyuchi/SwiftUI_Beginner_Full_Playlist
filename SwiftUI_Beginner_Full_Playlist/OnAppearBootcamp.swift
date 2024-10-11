//
//  OnAppearBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/11.
//
/// A call we make when a view appears or disappears on screen

import SwiftUI

struct OnAppearBootcamp: View {
    
    @State var myString: String = "Start text"
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    Text(myString)
                    
                    
                    LazyVStack {
                        ForEach(0..<50) { _ in
                            RoundedRectangle(cornerRadius: 25.0)
                                .frame(width: 330, height: 200)
                                .padding()
                        }
                    }
                }
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    myString = "Thi is new text"
                }
                
            })
            .onDisappear(perform: {
                myString = "ENDING TEXT"
            })
            .navigationTitle("On Appear Bootcamp")
        }
    }
}

#Preview {
    OnAppearBootcamp()
}
