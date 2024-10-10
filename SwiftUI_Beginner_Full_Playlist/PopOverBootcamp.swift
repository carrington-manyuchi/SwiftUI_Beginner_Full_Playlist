//
//  PopOverBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/10.
//
/// We gonna use 3 methods to pop up a screen Sheets, transitions and default animations

import SwiftUI

struct PopOverBootcamp: View {
    
    @State var showNewScreen: Bool = false
    
    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea()
            
            VStack {
                Button("Button".uppercased()) {
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                Spacer()
            }
            
            // METHOD 1 - Sheet
            
//            .sheet(isPresented: $showNewScreen, content: {
//                NewScreen()
//            })
//            .fullScreenCover(isPresented: $showNewScreen, content: {
//                NewScreen()
//            })
            
            // METHOD 2 = Transition
            
            if showNewScreen {
                NewScreen( showNewScreen: $showNewScreen)
                    .padding(.top, 100)
                    .transition(.move(edge: .bottom))
                    .animation(.spring(), value: showNewScreen)
            }
        }
        .zIndex(2.0)
    }
}

struct NewScreen: View {
      // for method 1
     // @Environment(\.dismiss) var dismissScreen
    
    // for method 2
    @Binding var showNewScreen   : Bool
    
    var body: some View {
        
        ZStack(alignment: .topTrailing) {
            Color.purple
                .ignoresSafeArea()
            
            Button(action: {
                // for method 1
                // dismissScreen()
                
                // for method 2
                showNewScreen.toggle()
            }, label: {
                Image(systemName: "xmark")
                    .font(.title)
                    .foregroundStyle(.white)
                    .padding()
                
            })
        }
    }
}

#Preview {
    PopOverBootcamp()
   // NewScreen()
}
