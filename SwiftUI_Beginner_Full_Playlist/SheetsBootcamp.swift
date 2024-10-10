//
//  SheetsBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/09.
//
/// Sheets are a segue that pops up  from the bottom  of our screen so we can present a new screen on top.]
/// How to add a sheet
///   1. A binding state variable, you need to bind it to the sheet & present the second screen
///   2. To dismiss a sheet, add the environment  dismiss to the screen and then call it as function  dismissScreen()
///   3. Do not add condiotional logic where you present your 2nd screen.


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
//                .sheet(isPresented: $showSheet, content: {
//                    SecondScreen()
//                })
                
                .fullScreenCover(isPresented: $showSheet, content: {
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
