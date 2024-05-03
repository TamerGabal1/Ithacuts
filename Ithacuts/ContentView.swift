//
//  ContentView.swift
//  Ithacuts
//
//  Created by Tamer Gabal on 4/28/24.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0
    @StateObject private var userAuth = UserAuth()
    
    var body: some View {
        
            TabView(selection: $selectedTab) {
                HomeVC()
                    .tabItem {
                        Label("Students", systemImage: "house")
                    }
                    .tag(0)
                    
                BusinessVC()
                    .tabItem {
                        Label("Business", systemImage: "briefcase")
                    }
                    .tag(1)
                Group{
                    if(!userAuth.signedIn){
                        ProfileSignIn()
                    }
                    else{
                        ProfileVC()
                    }
                }
                    .tabItem {
                        Label("Profile", systemImage: "person.crop.circle")
                    }
                    .tag(2)
            }
            .environmentObject(userAuth)
    }
}

#Preview {
    ContentView()
        .environmentObject(UserAuth())
}
