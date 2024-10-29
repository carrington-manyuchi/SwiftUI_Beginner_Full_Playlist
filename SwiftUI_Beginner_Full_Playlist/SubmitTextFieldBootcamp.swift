//
//  SubmitTextFieldBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/12.
//

import SwiftUI

struct SubmitTextFieldBootcamp: View {
    
    
    @State private var text: String = ""
    
    var body: some View {
        VStack {
            TextField("Placeholder", text: $text)
                .submitLabel(.send)
                .onSubmit {
                    print("Some thing  to the console")
                }
        }
       
    }
}

#Preview {
    SubmitTextFieldBootcamp()
}
