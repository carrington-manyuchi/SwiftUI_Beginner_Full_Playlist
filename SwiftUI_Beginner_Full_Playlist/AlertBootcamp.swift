//
//  AlertBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/10.
//
/// Alert present a pop up to users to say there is an error

import SwiftUI

struct AlertBootcamp: View {
    
    @State var showAlert: Bool = false
    @State var backgroundColor: Color = .brown
    
    var body: some View {
        NavigationStack {
           
            ZStack {
                backgroundColor.opacity(0.5)
                    .ignoresSafeArea()
                
                Button("Click Here") {
                    showAlert.toggle()
                }
                .font(.largeTitle)
                .bold()
                .foregroundStyle(.teal)
                .alert("Error!", isPresented: $showAlert) {
                    Button(role: .cancel) {
                        backgroundColor = .pink
                    } label: {
                        Text("Cancel")
                    }
                    
                    Button(role: .destructive) {
                        backgroundColor = .orange
                    } label: {
                        Text("Delete")
                    }
                }
                message: {
                    Text("There is something wrong with network")
                }
            }
            .navigationTitle("AlertBootcamp")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    AlertBootcamp()
}
