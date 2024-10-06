//
//  BindingPropertyWrapperBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/06.
//
/// PreRequisites
/// Understand State Property Wrapper first
/// How to extract Subviews
///
/// BindingPropertyWrapper we use it to coonect a state variable from the parent view to a child view.
/// Binding simply means the variable in the child view is going to connect to the variable in the parent view
/// The parent view should watch for changes in other child views and bind it in the new view
///
/// All app bindingconnects a variable in a child view to a state variable that was declared in a parent view.
///
/// @Binding we inset in child view
/// @State we inset in parent view and we put the variable with a $ sign to show the linkage

import SwiftUI

struct BindingPropertyWrapperBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var title: String = "title"
  
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            VStack {
                Text("\(title)".capitalized)
                ButtonView(backgroundColor: $backgroundColor,  title: $title)
            }
        }
    }
}
 
struct ButtonView: View {
    
    @Binding var backgroundColor: Color
    @State var buttonColor: Color = Color.blue
    @Binding var title: String
    
    var body: some View {
        Button(action: {
            backgroundColor = .orange;
            buttonColor = .gray
            title = "carrington"
       }, label: {
            Text("Button")
                .foregroundStyle(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        })
    }
}

#Preview {
    BindingPropertyWrapperBootcamp()
}
 
