//
//  ResizableSheetBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/12.
//

import SwiftUI

struct ResizableSheetBootcamp: View {
    
    @State private var showSheet: Bool = false
    var body: some View {
        Button("Click Me") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet, content: {
            Text("Hello World!!!")
                //.presentationDetents([.medium])
                .presentationDetents([.fraction(0.5)])
        })
    }
}

#Preview {
    ResizableSheetBootcamp()
}
