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
            Text("\(barber.name)")
        }
    }
}

#Preview {
    BarberVC(barber: barbers[0])
}
