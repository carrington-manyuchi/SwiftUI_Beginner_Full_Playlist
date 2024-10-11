//
//  MarkupsBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/11.
//

import SwiftUI

struct MarkupsBootcamp: View {
    // MARK: PROPERTIES
    @State var showAlert: Bool = false
    
    @State var data: [String] = [
        "Apples", "Bananas", "Peach", "Oranges"
    ]
    
    // MARK: BODY
    
    /// Working copy - things to do:
    ///
    ///
    var body: some View {
        NavigationStack {
            ScrollView {
                Text("Hello")
                
                ForEach(data, id: \.self) { fruit in
                    Text(fruit)
                }
            }
            .navigationTitle("Documentation")
            .toolbar(content: {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Alert") {
                        showAlert.toggle()
                    }
                }
            })
            .alert("Alert", isPresented: $showAlert) {
                
            } message: {
                Text("This is an alert")
            }
        }
    }
    
    // MARK: FUNCTIONS
}

// MARK: PREVIEW
#Preview {
    MarkupsBootcamp()
}
