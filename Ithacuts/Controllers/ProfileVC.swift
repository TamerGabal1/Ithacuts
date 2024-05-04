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
                    .padding(.top, 20)
                
//                NavigationLink {
//                    EditProfileVC()
//                } label: {
//                    editProfileButton
//                }
                
                profilePhotos
            }
        }
    }
}

// passing in profilePage(profile) kept saying profile is not in scope so I just commented it all out for now

private func profilePage(_ profile: Profile) -> some View {
    
    VStack(alignment: .leading) {
        
        HStack {
            
            Image(systemName: "person.crop.circle")
                .resizable()
                .frame(width: 100, height: 100)
                .padding(.leading, 25)
                .padding(.trailing, 15)
            
            VStack(alignment: .leading) {
                
                Text("Hi,")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                Text(profile.username)
                    .font(.title)
                    .fontWeight(.semibold)
                
            }
            
            Spacer()
        }
        
        Spacer()
            .frame(height: 30)
        
        HStack(alignment: .center){
            
            Image(systemName: "calendar")
                .resizable()
                .frame(width: 20, height: 20)
                .padding(.leading, 28)
                .foregroundStyle(Color(hex: "#363062"))
            
            Text("Age: \(profile.age ?? 0)")
                .font(.title2)
                .fontWeight(.medium)
                .padding(.leading, 5)
            
        }
        
        Spacer()
            .frame(height: 20)
        
        HStack {
            Image(systemName: "envelope.fill")
                .resizable()
                .frame(width: 25, height: 18)
                .padding(.leading, 25)
                .foregroundStyle(Color(hex: "#363062"))
            
            Text("\(profile.email)")
                .font(.title2)
                .fontWeight(.medium)
                .padding(.leading, 5)
        }
        
        Spacer()
            .frame(height: 20)
        
        HStack {
            Image(systemName: "phone.fill")
                .resizable()
                .frame(width: 25, height: 25)
                .padding(.leading, 25)
                .foregroundStyle(Color(hex: "#363062"))
            
            Text("\(profile.phoneNumber)")
                .font(.title2)
                .fontWeight(.medium)
                .padding(.leading, 5)
        }
        
//        Text("Preference: \(profile.preference ?? "")")
//            .font(.title2)
//            .fontWeight(.medium)
//            .padding(.top, 5)
//            .padding(.leading, 30)
        
        Spacer()
            .frame(height: 20)
        
        HStack(alignment: .center) {
            
            Image(systemName: "scissors")
                .resizable()
                .frame(width: 30, height: 20)
                .padding(.leading, 25)
                .foregroundStyle(Color(hex: "#363062"))
            
            Text("Hair Style: \(profile.hairStyle ?? "")")
                .font(.title2)
                .fontWeight(.medium)
        }

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
            .foregroundStyle(Color(hex: "#363062"))
            .clipShape(
                .rect(
                    topLeadingRadius: 20,
                    topTrailingRadius: 20
                )
            )
            .frame(width: UIScreen.main.bounds.width, height: 360)
        
        Text("Photos")
            .font(.title)
            .fontWeight(.semibold)
            .foregroundStyle(Color(hex: "#F99417"))
            .padding(.trailing, 250)
            .padding(.bottom, 290)
        
        HStack(alignment: .center) {
            
            Image("man_haircut")
                .resizable()
                .frame(width: 135, height: 135)
                .clipShape(RoundedRectangle(cornerRadius: 15))
            
            Spacer()
                .frame(width: 45)
            
            ZStack {
                Rectangle()
                    .frame(width: 135, height: 135)
                    .foregroundStyle(Color(hex: "#8D8D92"))
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                
                Image(systemName: "plus")
                    .resizable()
                    .frame(width: 35, height: 35)
                    .foregroundColor(Color(hex: "#363062"))
            }

        }
        .padding(.bottom, 85)

        
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
