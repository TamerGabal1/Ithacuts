//
//  ProfileVC.swift
//  Ithacuts
//
//  Created by Tamer Gabal on 4/28/24.
//

import SwiftUI

struct ProfileVC: View {
    var body: some View {
        
        // profilePage()
                        
        VStack{
            Text("Profile Page")
        }
        
    }
}

private func profilePage(_ profile: Profile) -> some View {
    HStack {
        
        Image(systemName: "xbox.logo")
            .resizable()
            .frame(width: 50, height: 50)
        
        VStack(alignment: .leading) {
            
            Text("Hi,")
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Text(profile.username)
                .font(.largeTitle)
                .fontWeight(.semibold)
            
        }
    }
}

#Preview {
    ProfileVC()
}
