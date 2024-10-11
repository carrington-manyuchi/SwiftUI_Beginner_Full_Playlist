//
//  ModelsBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/11.
//
/// Custom datat types
///

import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
}

struct ModelsBootcamp: View {
    
    @State var users: [UserModel] = [
   //     "Josy", "Kamila", "Josephine", "Carrington"
        UserModel(displayName: "Nick", userName: "Nick123", followerCount: 100, isVerified: true),
        UserModel(displayName: "Josephine", userName: "Josy", followerCount: 95, isVerified: false),
        UserModel(displayName: "Kamila", userName: "KK", followerCount: 500, isVerified: false),
        UserModel(displayName: "Carrington", userName: "CJ", followerCount: 350, isVerified: true)
    ]
    
    var body: some View {
        NavigationStack {
            List {
//                ForEach(users, id: \.self) { user in
//                    HStack {
//                        Circle()
//                            .frame(width: 35, height: 35)
//                        Text(user)
//                    }
//                    .padding(.vertical, 5)
//                }
                
                ForEach(users) { user in
                    HStack {
                        Circle()
                            .frame(width: 35, height: 35)
                        
                        VStack {
                            Text(user.displayName)
                            Text("@\(user.userName)")
                                .foregroundStyle(.gray)
                                .font(.caption)
                        }
                        Spacer()
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundStyle(.blue)
                        }
                        VStack {
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Followes")
                                .foregroundStyle(.gray)
                                .font(.caption)
                        }
                    }
                    .padding(.vertical, 5)
                }
            }
            .listStyle(.grouped)
            .navigationTitle("Users")
        }
    }
}

#Preview {
    ModelsBootcamp()
}
