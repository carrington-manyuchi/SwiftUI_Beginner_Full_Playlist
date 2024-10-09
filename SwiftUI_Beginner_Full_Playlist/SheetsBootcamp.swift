//
//  SheetsBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/09.
//
/// Sheets are a segue that pops up  from the bottom  of our screen so we can present a new screen on top.

import SwiftUI

struct SheetsBootcamp: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
            VStack {
                Button(action: {
                    showSheet.toggle()
                }, label: {
                    Text("Button")
                        .foregroundStyle(.green)
                        .font(.headline)
                        .padding(20)
                        .background(
                            in: RoundedRectangle(cornerRadius: 10)
                        )
                
                })
                .sheet(isPresented: $showSheet, content: {
                    SecondScreen()
                })
                
            }
        }
    }
}

struct SecondScreen: View {
    
    @Environment(\.dismiss) var dismissScreen
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .ignoresSafeArea()
            
                Button(action: {
                    dismissScreen()
                }, label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(.white)
                        .font(.largeTitle)
                        .padding(20)
                        
                
                })
                
            
        }
    }
}

#Preview {
    SheetsBootcamp()
}
