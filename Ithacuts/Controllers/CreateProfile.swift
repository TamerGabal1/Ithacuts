//
//  CreateProfile.swift
//  Ithacuts
//
//  Created by Tamer Gabal on 5/1/24.
//

import SwiftUI

struct CreateProfile: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var accountType: String = ""
    
    var body: some View {
        NavigationStack{
            VStack{
                header
                Spacer()
                    .frame(height: 20)
                createProfileHeader
                VStack{
                    Spacer()
                        .frame(height: 50)
                    loginField
                    Spacer()
                        .frame(height: 40)
                    createProfileButton
                    Spacer()
                        .frame(height: 20)
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
    
    private var createProfileHeader: some View{
        Text("Create Profile")
            .font(.title3)
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
            List{
                Picker("Choose Your Account Type", selection: $accountType){
                    Text("Standard User")
                    Text("Student Barber")
                    Text("Business")
                }
                .padding()
            }
            .padding()
        }
    }
    
    private var createProfileButton: some View{
        Button() {
            createProfile()
        } label: {
            Text("Create Profile")
                .font(.title2)
                .padding()
                .padding(.horizontal, 65)
                .background(.black)
                .clipShape(RoundedRectangle(cornerRadius: 16))
                .foregroundColor(.white)
        }
    }
    
    private func createProfile(){
        //TODO: Implement creating profile functionality
        
        //Once profile created, go back to sign in page
        presentationMode.wrappedValue.dismiss()
    }
}

