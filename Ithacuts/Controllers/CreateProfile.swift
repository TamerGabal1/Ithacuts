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
                    .padding(.top, 40)
                
                Spacer()
                    .frame(height: 60)
                
                createProfileHeader
                                    
                    Spacer()
                        .frame(height: 20)
                    
                    loginField
                    
                    Spacer()
                        .frame(height: 40)
                    
                    createProfileButton
                    
                    Spacer()
                        .frame(height: 30)
                
                .padding()
                .font(.headline)
            }
            .padding(.horizontal)
        }
    }

    
    
    
    private var header: some View{
        
        HStack(alignment: .center) {
            Text("Welcome To")
                .font(.title)
                .fontWeight(.semibold)
            
            Text("ITHACUTS")
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(Color(hex: "#F99417"))
        }
        
    }
    
    private var createProfileHeader: some View{
        Text("Create Profile")
            .font(.title2)
            .fontWeight(.bold)
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
            List{
                Picker("Choose Your Account Type", selection: $accountType){
                    Text("Standard User")
                    Text("Student Barber")
                    Text("Business")
                }
                .padding()
            }
            .padding(.horizontal)
        }
    }
    
    private var createProfileButton: some View{
        Button() {
            createProfile()
        } label: {
            Text("Create Profile")
                .font(.title2)
                .fontWeight(.semibold)
                .padding()
                .padding(.horizontal, 65)
                .background(Color(hex: "#363062"))
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

struct CreateProfile_Previews: PreviewProvider {
    static var previews: some View {
        CreateProfile()
    }
}
