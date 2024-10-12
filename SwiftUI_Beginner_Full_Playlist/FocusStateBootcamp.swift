//
//  FocusStateBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/11.
//
/// FocusState  property wrapper - Allows us to programmatically either select or unselect a component in SwiftUI

import SwiftUI

struct FocusStateBootcamp: View {
    
    enum OnboardingFields {
        case username
        case password
    }
    
    @State var username: String = ""
    @State var password: String = ""
    @FocusState private var  fieldInFocus: OnboardingFields?
    //@FocusState private var passwordInFocus: Bool
    //@FocusState private var usernameInFocus: Bool
    
    var body: some View {
        VStack(spacing: 30.0) {
            TextField("Add your name here...", text: $username)
               // .focused($usernameInFocus)
                .focused($fieldInFocus, equals: .username)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.37))
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            SecureField("Add your password here...", text: $password)
               // .focused($passwordInFocus)
                .focused($fieldInFocus, equals: .password)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.37))
                .clipShape(RoundedRectangle(cornerRadius: 10))
                
            
            Button("SIGN UP") {
                    
                let usernameIsValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty
                if usernameIsValid && passwordIsValid {
                    print("Sign UP")
                } else if usernameIsValid {
                    fieldInFocus = .password
//                    usernameInFocus = false
//                    passwordInFocus = true
                } else {
                    fieldInFocus = .username
//                    usernameInFocus = true
//                    passwordInFocus = false
                }
            }
        }
        .padding(40)
//        .onAppear {
//            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
//                self.usernameInFocus = true
//            }
//        }
    }
}

#Preview {
    FocusStateBootcamp()
}
