//
//  TextEditorBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/10.
//

import SwiftUI

struct TextEditorBootcamp: View {
    
    @State var textEditorText: String = "The is the start text editor"
    @State var savedText: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                    .colorMultiply(.teal)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    
                
                Button(action: {
                    savedText = textEditorText
                }, label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    
                })
                Text(savedText)
                Spacer()
            }
            .navigationTitle("Text Editor")
            .padding()
            .background(Color.red)
        }
    }
}

#Preview {
    TextEditorBootcamp()
}
