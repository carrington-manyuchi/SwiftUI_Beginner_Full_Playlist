//
//  AppStorageBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/11.
//

/// App Storage - User Defaults in UIKit
/// A little mini database in your iPhone so that when your phone close and reopens it will just resume.
///  ~Good for sign in / sign out

import SwiftUI

struct AppStorageBootcamp: View {
    
   // @State var curreUserName: String?
    
    @AppStorage("name") var curreUserName: String?
    
    var body: some View {
        ZStack {
            VStack {
                
                Text(curreUserName ?? "Add Name here")
                
                if let curreUserName = curreUserName {
                    Text(curreUserName)
                }
                
                Button("Save") {
                    let name = "Josy"
                    curreUserName = name
                    //UserDefaults.standard.setValue(name, forKey: "name")
                }
            }
//            .onAppear{
//                curreUserName = UserDefaults.standard.string(forKey: "name")
//            }
        }
    }
}

#Preview {
    AppStorageBootcamp()
}
