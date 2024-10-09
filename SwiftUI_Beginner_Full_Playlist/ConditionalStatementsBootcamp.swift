//
//  ConditionalStatementsBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/06.
//

import SwiftUI

struct ConditionalStatementsBootcamp: View {
    
    @State var showCircle: Bool = true
    @State var isLoading: Bool = false
    
    var body: some View {
        ZStack {
            Color.teal
                .ignoresSafeArea()
            
//            VStack {
//                Button("Cirlce Button: \(showCircle.description)") {
//                    showCircle.toggle()
//                    
//                }
//                
//                if showCircle {
//                    Circle()
//                        .fill(Color.black.opacity(0.4))
//                        .frame(width: 100, height: 100)
//                       // .shadow(radius: 10)
//                        .shadow(color: .black, radius: 10, x: 1, y: -1)
//                        
//                } else {
//                    Rectangle()
//                        .frame(width: 100, height: 100)
//                }
//                Spacer()
//            }
            VStack(spacing: 20) {
                
                if isLoading {
                    ProgressView()
                        .font(.largeTitle)
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    ConditionalStatementsBootcamp()
}
