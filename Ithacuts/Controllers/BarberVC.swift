//
//  BarberVC.swift
//  Ithacuts
//
//  Created by Tamer Gabal on 5/2/24.
//

import SwiftUI

struct BarberVC: View {
    var barber: Barber
    
    var body: some View {
        
        VStack{
            
            barberPage(barber)
            
            barberPhotos
        }
        .navigationTitle("Barber")
    }
}

private func barberPage(_ barber: Barber) -> some View {
    
    VStack(alignment: .leading) {
        
        HStack {
            
            Image(systemName: "playstation.logo")
                .resizable()
                .frame(width: 100, height: 100)
                .padding(.leading, 25)
                .padding(.trailing, 15)
            
            VStack(alignment: .leading) {
                
                Text("Barber:")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                Text(barber.username)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
            }
            
            Spacer()
        }
        
        Text("Contact: ")
            .font(.title2)
            .fontWeight(.medium)
            .padding(.top, 10)
            .padding(.leading, 30)
        
//        Text("Rating: \(barber.rating)")
//            .font(.title2)
//            .fontWeight(.medium)
//            .padding(.top, 5)
//            .padding(.leading, 30)
        
        Text("Location: ")
            .font(.title2)
            .fontWeight(.medium)
            .padding(.top, 5)
            .padding(.leading, 30)
        
        Text("Skills/Experience: ")
            .font(.title2)
            .fontWeight(.medium)
            .padding(.top, 5)
            .padding(.leading, 30)
            .padding(.bottom, 15)

        Spacer()
        
    }
}

private var barberPhotos: some View {
    
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

//
//#Preview {
//    BarberVC(barber: barbers[0])
//}
