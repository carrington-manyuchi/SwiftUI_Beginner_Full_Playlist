//
//  ListSwipeActionsBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/11.
//

import SwiftUI

struct ListSwipeActionsBootcamp: View {
    
    
    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach"
    ]
    
    var body: some View {
        List {
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)
                    .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                        Button(action: {
                            
                        }, label: {
                            Text("Delete")
                                
                        })
                        .tint(.red)
                        
                        Button(action: {
                            
                        }, label: {
                            Text("Save")
                               
                        })
                        .tint(.green)
                        
                        
                        Button(action: {
                            
                        }, label: {
                            Text("Archive")
                        })                                
                        .tint(.gray)
                    }
                    .swipeActions(edge: .leading, allowsFullSwipe:  true) {
                        Button(action: {
                            
                        }, label: {
                            Text("Share")
                        })
                        .tint(.yellow)
                    }
                    
            }
        }
    }
}

#Preview {
    ListSwipeActionsBootcamp()
}
