//
//  ProfileVC.swift
//  Ithacuts
//
//  Created by Tamer Gabal on 4/28/24.
//

import SwiftUI

struct ProfileVC: View {
    private var profile: Profile = profiles[0]
    
    var body: some View {
        NavigationStack {
            
            VStack {
                
                profilePage(profile)
                
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

// passing in profilePage(profile) kept saying profile is not in scope so I just commented it all out for now

private func profilePage(_ profile: Profile) -> some View {
    
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
                
                Text(profile.username)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
            }
            
            Spacer()
        }
        
        Text("Age: \(profile.age)")
            .font(.title2)
            .fontWeight(.medium)
            .padding(.top, 10)
            .padding(.leading, 30)
        
        Text("Preference: \(profile.preference)")
            .font(.title2)
            .fontWeight(.medium)
            .padding(.top, 5)
            .padding(.leading, 30)
        
        Text("Hair Style: \(profile.hairStyle)")
            .font(.title2)
            .fontWeight(.medium)
            .padding(.top, 5)
            .padding(.leading, 30)

        Spacer()
        
    }
}

//private var profilePage: some View {
//    
//    VStack(alignment: .leading) {
//        
//        HStack {
//            
//            Image(systemName: "xbox.logo")
//                .resizable()
//                .frame(width: 100, height: 100)
//                .padding(.leading, 25)
//                .padding(.trailing, 15)
//            
//            VStack(alignment: .leading) {
//                
//                Text("Hi,")
//                    .font(.largeTitle)
//                    .fontWeight(.semibold)
//                
//                Text("User Name") // make the username reflect whatever was typed in the username text field
//                    .font(.largeTitle)
//                    .fontWeight(.semibold)
//                
//            }
//            
//            Spacer()
//        }
//        
//        Text("Age: ")
//            .font(.title2)
//            .fontWeight(.medium)
//            .padding(.top, 10)
//            .padding(.leading, 30)
//        
//        Text("Preference: ")
//            .font(.title2)
//            .fontWeight(.medium)
//            .padding(.top, 5)
//            .padding(.leading, 30)
//        
//        Text("Hair Style: ")
//            .font(.title2)
//            .fontWeight(.medium)
//            .padding(.top, 5)
//            .padding(.leading, 30)
//
//        Spacer()
//        
//    }
//}

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
    ProfileVC()
}
