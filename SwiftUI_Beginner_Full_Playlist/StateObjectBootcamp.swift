//
//  StateObjectBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/11.
//
/// These are properties wrappers that we can use to observe other classes in our app and have them update our view in real time.
/// We can use @StateObject to reference another class, if something is happening in that classs and have our view update.
/// /// We cannot not use @State, we can only use it inside a struct and in a view
/// @Published - is the same thing as the @State but only inside a class
///
///  ObservableObject means the class that is being tracked
///  ObservedObject means it is a struct that is tracking the changes. Used in sub screens
/// State Object -  Helps the data to persist even though the view reloads
/// State Object is the same thing as the Observed Object except that if this view reloads it re-renders this object thus it will not refresh
/// this is better for most cases when the VM is holding data

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

class FruitViewModel: ObservableObject {
    /// We cannot not use @State, we can only use it inside a struct and in a view
    ///
    
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init() {
        getFruits()
    }
    
    func getFruits() {
        let fruit1 = FruitModel(name: "Orange", count: 1)
        let fruit2 = FruitModel(name: "Banana", count: 2)
        let fruit3 = FruitModel(name: "Watermelon", count: 6)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        }
        
    }
    
    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
}

struct StateObjectBootcamp: View {
    
    //@State var fruitArray: [FruitModel] = []
    
    /// @StateObject -> Use this on creation / initialise]
    ///  @Observed Object --> Use this for subviews
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundStyle(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFruit(index:))
                }
            }
            .listStyle(.grouped)
            .navigationTitle("Fruit List")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    
                    NavigationLink(destination: SecondNextScreen(fruitViewModel: fruitViewModel)) {
                        Image(systemName: "arrow.right")
                    }
                }
            }
        }
    }
}


struct SecondNextScreen: View {
    
    @Environment(\.dismiss) var dismissScreen
    @ObservedObject var fruitViewModel: FruitViewModel
    
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
            
            VStack {
                ForEach(fruitViewModel.fruitArray) { fruit in
                    Text(fruit.name)
                        .foregroundStyle(.white)
                        .font(.headline)
                }
            }
        }
    }
}

#Preview {
    StateObjectBootcamp()
}
