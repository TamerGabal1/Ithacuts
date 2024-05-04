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
                
                loginField
                    
                Spacer()
                    .frame(height: 20)
                    
                signInButton
                    
                Spacer()
                    .frame(height: 15)
                    
                NavigationLink{
                    CreateProfile()
                } label: {
                    signUpButton
                }
                    
            .font(.headline)
            }
            .padding(.horizontal)

        }
    }
    
    private var header: some View{
        
        VStack(alignment: .center) {
            
            Image("ithacut_logo")
                .resizable()
                .frame(width: 150, height: 150)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .padding(.top, 50)
            
//            Text("Welcome to")
//                .font(.title)
            
            Text("ITHACUTS")
                .font(.largeTitle)
                .foregroundStyle(Color(hex: "#F99417"))
                .fontWeight(.bold)
                .padding(.bottom, 50)
        }
        
    }
    
    private var loginField: some View{
        VStack{
            Text("Username")
                .padding(.trailing, 200)
                .font(.title3)
                .fontWeight(.semibold)
            TextField("", text: $username)
                .padding()
                .background(Color(hex: "#8D8D92"))
                .clipShape(RoundedRectangle(cornerRadius: 16))
                .padding(.horizontal, 35)
            
            Spacer()
                .frame(height: 10)
            
            Text("Password")
                .padding(.trailing, 200)
                .font(.title3)
                .fontWeight(.semibold)
            TextField("", text: $password)
                .padding()
                .background(Color(hex: "#8D8D92"))
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
                .fontWeight(.semibold)
                .padding()
                .padding(.horizontal, 95)
                .background(Color(hex: "#363062"))
                .clipShape(RoundedRectangle(cornerRadius: 16))
                .foregroundColor(.white)
        }
    }
    
    private var signUpButton: some View{
        Text("Don't have an account? Sign Up!")
            .padding()
            .background(Color(hex: "#363062"))
            .clipShape(RoundedRectangle(cornerRadius: 16))
            .foregroundColor(.white)
            .padding(.bottom, 40)
    }
    
    private func signIn(){
        //TODO: Implement sign in functionality
        let profile = Profile(username: username, age: nil, preference: nil, hairStyle: nil, profilePhoto: nil)
        
        
        //Once signed in, go to ProfileVC
        userAuth.signedIn = true
    }
}

extension Color {
    init(hex: String) {
        var cleanHexCode = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        cleanHexCode = cleanHexCode.replacingOccurrences(of: "#", with: "")
        print(cleanHexCode)
        var rgb: UInt64 = 0
        
        Scanner(string: cleanHexCode).scanHexInt64(&rgb)
        
        let redValue = Double((rgb >> 16) & 0xFF) / 255.0
        let greenValue = Double((rgb >> 8) & 0xFF) / 255.0
        let blueValue = Double(rgb & 0xFF) / 255.0
        self.init(red: redValue, green: greenValue, blue: blueValue)
    }
}

struct ProfileSignIn_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSignIn()
    }
}
