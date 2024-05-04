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
        
        if !userAuth.signedIn {
            ProfileSignIn()
                .environmentObject(userAuth)
                .onReceive(userAuth.$signedIn) {signedIn in if signedIn {
                    userAuth.objectWillChange.send()
                }
            }
        } else {
            TabView {
                HomeVC()
                    .tabItem {
                        Label("Students", systemImage:"house")
                    }
                    .tag(0)
                
                ProfileVC()
                    .tabItem {
                        Label("Profile", systemImage: "person.crop.circle")
                    }
                    .tag(1)
            }
            .environmentObject(userAuth)
        }
        
        
//            TabView(selection: $selectedTab) {
//                HomeVC()
//                    .tabItem {
//                        Label("Students", systemImage: "house")
//                    }
//                    .tag(0)
////                    
////                BusinessVC()
////                    .tabItem {
////                        Label("Business", systemImage: "briefcase")
////                    }
////                    .tag(1)
//                Group{
//                    if(!userAuth.signedIn){
//                        ProfileSignIn()
//                    }
//                    else{
//                        ProfileVC()
//                    }
//                }
//                    .tabItem {
//                        Label("Profile", systemImage: "person.crop.circle")
//                    }
//                    .tag(1)
//            }
//            .environmentObject(userAuth)
    }
}

#Preview {
    ContentView()
}
