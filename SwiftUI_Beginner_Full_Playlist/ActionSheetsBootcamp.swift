//
//  ActionSheetsBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/10.
//

import SwiftUI

struct ActionSheetsBootcamp: View {
    
    @State var showDialogue: Bool = false
    @State var backgroundColor: Color = .brown
    
    var body: some View {
        NavigationStack {
            ZStack {
                backgroundColor.opacity(0.4)
                    .ignoresSafeArea()
                Button("Click Me") {
                    showDialogue.toggle()
                }
                .confirmationDialog("Confirm", isPresented: $showDialogue) {
                    Button("Red") { backgroundColor = .red }
                                    Button("Green") { backgroundColor = .green }
                                    Button("Yellow") { backgroundColor = .yellow }
                                    Button("Remove color", role: .destructive) { backgroundColor = .clear }
                                    Button("Cancel", role: .cancel) { }
                } message: {
                    Text("This is a confirmation dialog")
                }
            }
            .navigationTitle(Text("Actions Sheets"))
        }
    }
}

#Preview {
    ActionSheetsBootcamp()
}
