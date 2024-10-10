//
//  ListBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/10.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach"
    ]
    
    
    @State var veggies: [String] = [
        "tomatoes", "potatoes", "carrot"
    ]
    
    var body: some View {
        NavigationStack {
            List {
                
                Section {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                    }
//                    .onDelete(perform: { indexSet in
//                        delete(indexSet: indexSet)
//                    })
                    .onDelete(perform: delete(indexSet:))
                    .onMove(perform: move(indices:newOffset:))
                    .listRowBackground(Color.brown.opacity(0.3))
                } header: {
                    HStack {
                        Text("Fruits")
                        Image(systemName: "flame.fill")
                    }
                    .font(.headline)
                    .foregroundStyle(.orange)
                }
                
                Section {
                    ForEach(veggies, id: \.self) { veg in
                        Text("\(veg)".capitalized)
                    }
                } header: {
                    Text("Veggies")
                        .font(.headline)
                        .foregroundStyle(.orange)
                }


            }
           // .listStyle(.sidebar)
           
            
            .navigationTitle("Grocery List")
            .toolbarTitleDisplayMode(.automatic)
            .toolbar(content: {
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .topBarTrailing) {
                    addButton
                }
            })
        }
        .tint(.red)
    }
    
    var addButton: some View {
        Button("Add") {
            add()
        }
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func add() {
        fruits.append("Coconut")
    }
}

#Preview {
    ListBootcamp()
}
