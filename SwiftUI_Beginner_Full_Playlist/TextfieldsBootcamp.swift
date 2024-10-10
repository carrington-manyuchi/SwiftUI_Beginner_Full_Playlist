//
//  TextfieldsBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/10.
//

import SwiftUI

struct TextfieldsBootcamp: View {
    
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    TextField("Type something here...", text: $textFieldText)
                       // .textFieldStyle(.roundedBorder)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        .foregroundStyle(.red)
                        .font(.headline)
                        
                   
                    Button(action: {
                        if textIsAppropiate() {
                            saveText()
                        }
                    }, label: {
                        Text("Save".uppercased())
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(textIsAppropiate() ? Color.blue : Color.gray)
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                            .foregroundStyle(.white)
                            .font(.headline)
                            
                    })
                    .disabled(!textIsAppropiate())
                    
                    ForEach(dataArray, id: \.self) { data in
                        Text(data)
                    }
                    
                    Spacer()
                }
            }
            .padding()
            .navigationTitle("TextField Bootcamp!")
        }
    }
    
    func textIsAppropiate() -> Bool {
        // check if text is appropiate or not
        if textFieldText.count >= 3 {
            return true
        }
        return false
    }
    
    func saveText() {
        dataArray.append(textFieldText)
    }
}

#Preview {
    TextfieldsBootcamp()
}
