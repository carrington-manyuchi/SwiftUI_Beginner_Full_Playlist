//
//  NavigationViewBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/10.
//
/// Navigation View
///  We can use navigation title, link to move to another screen

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationStack {
            
            ScrollView {
                
                NavigationLink("Hello, World") {
                    MyOtherScreen()
                }
                
                Text("Hello, World")
                Text("Hello, World")
                Text("Hello, World")
            }
            .navigationTitle("All inboxes")
            //.navigationBarTitleDisplayMode(.automatic)
            //.toolbar(.hidden, for: .navigationBar)
        }
    }
}

struct MyOtherScreen: View {
    
    @Environment(\.dismiss) var dismissScreen
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            VStack {
                
                Button("Back Button") {
                    dismissScreen()
                }
                
                
                
                Text("This is my second screen")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                
                    .navigationTitle("Green Screen")
                   // .toolbar(.hidden, for: .navigationBar)
                    .toolbar(content: {
                        ToolbarItemGroup(placement: .topBarLeading) {
                            Button(action: {
                                
                            }, label: {
                                Image(systemName: "person.fill")
                            })
                        } 
                        
                        ToolbarItem(placement: .topBarTrailing) {
                            Button(action: {
                                
                            }, label: {
                                Image(systemName: "gear")
                            })
                        }

                    })
                
                NavigationLink("Click Here") {
                    Text("Third Screen")
                }
            }
        }
    }
}

#Preview {
    NavigationViewBootcamp()
}
