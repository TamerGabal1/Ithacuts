//
//  HomeVC.swift
//  Ithacuts
//
//  Created by Tamer Gabal on 4/28/24.
//

import SwiftUI

struct HomeVC: View {
    var body: some View {
        NavigationStack{
            VStack{
                Text("Home View")
                    .padding()
                List(barbers, id: \.self) { barber in
                    NavigationLink{
                        BarberVC(barber: barber)
                    } label: {
                        barberInfoRow(barber)
                    }
                }
                .navigationTitle("Barbers List")
            }
        }
    }
    
    private func barberInfoRow(_ barber: Barber) -> some View{
        
//        VStack{
//            HStack{
//                Image(systemName:"person.crop.circle")
//                    .resizable()
//                    .frame(width: 50, height: 50)
//                .padding()
//                Text(barber.name)
//                    .font(.largeTitle)
//                    .fontWeight(.semibold)
//                
//                
//            }
//            HStack{
//                Image(systemName: "star.fill")
//                Text("Rating: \(barber.rating)")
//            }
//        }
        
        HStack {
            
            Image(systemName: "person.crop.circle")
                .resizable()
                .frame(width: 50, height: 50)
                .padding()
            
            VStack(alignment: .leading) {
                
                Text(barber.name)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                HStack {
                    Image(systemName: "star.fill")
                    Text("Rating: \(barber.rating)")
                    
                }
            }
        }
        
    }
}

#Preview {
    HomeVC()
}
