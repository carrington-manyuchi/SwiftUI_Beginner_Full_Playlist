//
//  transitionsBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/09.
//

import SwiftUI

struct transitionsBootcamp: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button("Button") {
                    showView.toggle()
                }
                
                Spacer()
                
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    //.opacity(showView ? 1.0 : 0.0)
                   // .transition(.move(edge: .bottom))
                    .transition(.asymmetric(
                        insertion: .move(edge: .bottom),
                        removal: AnyTransition.opacity.animation(.easeInOut))
                    )
                    .animation(.spring, value: showView)
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    transitionsBootcamp()
}
