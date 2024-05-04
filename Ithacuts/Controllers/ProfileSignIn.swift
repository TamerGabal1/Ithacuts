//
//  ProfileSignIn.swift
//  Ithacuts
//
//  Created by Tamer Gabal on 4/28/24.
//

import SwiftUI

struct ProfileSignIn: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @EnvironmentObject var userAuth: UserAuth
    
    var body: some View {
        NavigationStack{
            VStack{
                header
                VStack{
                    Spacer()
                        .frame(height: 50)
                    loginField
                    Spacer()
                        .frame(height: 40)
                    signInButton
                    Spacer()
                        .frame(height: 20)
                    NavigationLink{
                        CreateProfile()
                    } label: {
                        signUpButton
                    }
                }
                .padding()
                .font(.headline)
            }
        }
    }
    
    private var header: some View{
        Text("Welcome To \n  ITHACUTS")
            .font(.title2)
            .fontWeight(.bold)
    }
    
    private var loginField: some View{
        VStack{
            Text("Username")
                .padding(.trailing, 210)
            TextField("", text: $username)
                .padding()
                .background(.gray)
                .clipShape(RoundedRectangle(cornerRadius: 16))
                .padding(.horizontal, 35)
            
            Spacer()
                .frame(height: 50)
            
            Text("Password")
                .padding(.trailing, 210)
            TextField("", text: $password)
                .padding()
                .background(.gray)
                .clipShape(RoundedRectangle(cornerRadius: 16))
                .padding(.horizontal, 35)
        }
    }
    
    private var signInButton: some View{
        Button() {
            signIn()
        } label: {
            Text("Sign In")
                .font(.title2)
                .padding()
                .padding(.horizontal, 95)
                .background(.black)
                .clipShape(RoundedRectangle(cornerRadius: 16))
                .foregroundColor(.white)
        }
    }
    
    private var signUpButton: some View{
        Text("Don't have an account? Sign Up!")
            .padding()
            .background(.black)
            .clipShape(RoundedRectangle(cornerRadius: 16))
            .foregroundColor(.white)
    }
    
    private func signIn(){
        //TODO: Implement sign in functionality
        let profile = Profile(username: username, age: nil, preference: nil, hairStyle: nil, profilePhoto: nil)
        
        
        //Once signed in, go to ProfileVC
        userAuth.signedIn = true
    }
}

