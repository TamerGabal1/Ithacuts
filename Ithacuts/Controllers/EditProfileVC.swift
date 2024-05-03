//
//  EditProfileVC.swift
//  Ithacuts
//
//  Created by Paul Hwang on 5/3/24.
//

import SwiftUI

struct EditProfileVC: View {
    
    @State private var username: String = ""
    
    var body: some View {
        NavigationStack {
            
            VStack {
                
                profilePage
                
                NavigationLink {
                    EditProfileVC()
                } label: {
                    editProfileButton
                }
                
                profilePhotos
            }
        }
    }
}

private var profilePage: some View {
    
    VStack(alignment: .leading) {
        
        HStack {
            
            Image(systemName: "xbox.logo")
                .resizable()
                .frame(width: 100, height: 100)
                .padding(.leading, 25)
                .padding(.trailing, 15)
            
            VStack(alignment: .leading) {
                
                Text("Hi,")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
//                TextField("Username", text: $username)
                Text("User Name")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
            }
            
            Spacer()
        }
        
        Text("Age: ")
            .font(.title2)
            .fontWeight(.medium)
            .padding(.top, 10)
            .padding(.leading, 30)
        
        Text("Preference: ")
            .font(.title2)
            .fontWeight(.medium)
            .padding(.top, 5)
            .padding(.leading, 30)
        
        Text("Hair Style: ")
            .font(.title2)
            .fontWeight(.medium)
            .padding(.top, 5)
            .padding(.leading, 30)

        Spacer()
        
    }
}

private var profilePhotos: some View {
    
    ZStack {
        
        Rectangle()
            .foregroundStyle(.gray)
            .clipShape(
                .rect(
                    topLeadingRadius: 20,
                    topTrailingRadius: 20
                )
            )
        
        // put the collectionview of the photos here
            
    }
}

private var editProfileButton: some View {

        Text("Edit Profile")
            .font(.title2)
            .fontWeight(.regular)
            .foregroundStyle(.white)
            .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
            .padding(.horizontal, 50)
            .background(.gray)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .padding(.bottom)
        
}

#Preview {
    EditProfileVC()
}
