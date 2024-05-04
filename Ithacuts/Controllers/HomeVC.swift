
import SwiftUI

struct HomeVC: View {
    @State var barbers: [Barber] = []
    
    var body: some View {
        NavigationStack{
            VStack{
                Spacer()
                List(barbers, id: \.id) { barber in
                    NavigationLink{
                        BarberVC(barber: barber)
                    } label: {
                        barberInfoRow(barber)
                    }
                }
                .navigationTitle("Barbers List")
            }
            .onAppear{
                fetchBarbers()
            }
        }
    }
    
    private func fetchBarbers() {
        NetworkManager.shared.getBarbers { newBarbers in
            DispatchQueue.main.async {
//                print("Space")
//                print(newBarbers)
                barbers = newBarbers
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
                Text(barber.username)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
//                HStack {
//                    Image(systemName: "star.fill")
//                    Text("Rating: \(barber.rating)")
//                    
//                }
            }
        }
        
    }
}

#Preview {
    HomeVC()
}
