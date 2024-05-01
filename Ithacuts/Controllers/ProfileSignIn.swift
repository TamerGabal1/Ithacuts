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
    
    var body: some View {
        VStack{
            Group{
                Text("Welcome To")
                Text("ITHACUTS")
            }
            .font(.headline)
            .fontWeight(.bold)
            
            
            VStack{
                
                Spacer()
                    .frame(height: 50)
                
                Text("Username")
                    .padding(.trailing, 210)
                TextField("", text: $username)
                    .padding()
                    .background(.gray)
                    .cornerRadius(16)
                    .padding(.horizontal, 35)
                
                Spacer()
                    .frame(height: 50)
                
                Text("Password")
                    .padding(.trailing, 210)
                TextField("", text: $password)
                    .padding()
                    .background(.gray)
                    .cornerRadius(16)
                    .padding(.horizontal, 35)
                
                Spacer()
                    .frame(height: 40)
                
                Button("Sign In") {
                    signIn()
                }
                .font(.title2)
                .padding()
                .padding(.horizontal, 95)
                .background(.black)
                .cornerRadius(16)
                .tint(.white)
                
                Spacer()
                    .frame(height: 20)
                
                Button("Don't have an account? Sign Up!"){
                    signUp()
                }
                .padding()
                .background(.black)
                .cornerRadius(16)
                .tint(.white)
            }
            .padding()
            .font(.headline)
        }
    }
    
    private func signIn(){
        
    }
    
    private func signUp(){
        
    }
}

#Preview {
    ProfileSignIn()
}
