//
//  OptionalsBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/11.
//
/// if let and guard let for optionals

import SwiftUI

struct OptionalsBootcamp: View {
    
    @State var displayText: String? = nil
    @State var currentUserID: String? = nil
    @State var isLoading: Bool = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                Text("Here we are practising safe coding!")
                
                if let displayText = displayText {
                    Text(displayText)
                        .font(.title)
                }
                
                if isLoading {
                    ProgressView()
                }
            }
            .navigationTitle("Optionals")
            .onAppear {
                loadDataTwo()
            }
        }
    }
    
    func loadData() {
        
        if let userID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "This is the new data! UserID is \(userID)"
                isLoading = false
            }
        } else {
            displayText = "Error there is no User ID"
        }
        
        
    }
    
    
    func loadDataTwo() {
        guard let userID = currentUserID else {
            displayText = "Error there is no User ID 2"
            return
        }
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displayText = "This is the new data! UserID is \(userID)"
            isLoading = false
        }
    }
}

#Preview {
    OptionalsBootcamp()
}
