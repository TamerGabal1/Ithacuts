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
//        .navigationTitle("Barber")
    }
}

private func barberPage(_ barber: Barber) -> some View {
    
    VStack(alignment: .leading) {
        
        HStack {
            
            Image(systemName: "scissors")
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
        
        Text("Bio: \(barber.bio)")
            .font(.title2)
            .fontWeight(.medium)
            .padding(.top, 10)
            .padding(.leading, 30)
        
        Text("Contacts: \(barber.contacts)")
            .font(.title2)
            .fontWeight(.medium)
            .padding(.top, 5)
            .padding(.leading, 30)
        
        Spacer()
            .frame(height: 20)
        Text("Comments:")
            .font(.title2)
            .fontWeight(.medium)
            .padding(.top, 5)
            .padding(.leading, 30)
        List(barber.comments, id: \.id) { comment in
            commentInRow(comment)
                .font(.title2)
                .fontWeight(.medium)
                .padding(.top, 5)
                .padding(.leading, 30)
        }
//        .navigationTitle("Comments:")
//            .font(.title2)
//            .fontWeight(.medium)
//            .padding(.top, 5)
//            .padding(.leading, 30)
        
//        Text("Skills/Experience: ")
//            .font(.title2)
//            .fontWeight(.medium)
//            .padding(.top, 5)
//            .padding(.leading, 30)
//            .padding(.bottom, 15)

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

private func commentInRow(_ comment: Comment) -> some View{
    Text("\(comment.description)")
}

//
//#Preview {
//    BarberVC(barber: barbers[0])
//}
