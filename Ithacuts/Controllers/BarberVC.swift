//
//  BarberVC.swift
//  Ithacuts
//
//  Created by Tamer Gabal on 5/2/24.
//
//
//import SwiftUI
//
//struct BarberVC: View {
//    var barber: Barber
//    
//    var body: some View {
//        
//        VStack{
//            
//            barberPage(barber)
//            
////            barberPhotos
//        }
////        .navigationTitle("Barber")
//    }
//}
//
//private func barberPage(_ barber: Barber) -> some View {
//    
//    VStack(alignment: .leading) {
//        
//        HStack {
//            
//            Image(systemName: "scissors")
//                .resizable()
//                .frame(width: 100, height: 100)
//                .padding(.leading, 25)
//                .padding(.trailing, 15)
//            
//            VStack(alignment: .leading) {
//                
//                Text("Barber:")
//                    .font(.largeTitle)
//                    .fontWeight(.semibold)
//                
//                Text(barber.username)
//                    .font(.largeTitle)
//                    .fontWeight(.semibold)
//                
//            }
//            
//            Spacer()
//        }
//        
//        Text("Bio: \(barber.bio)")
//            .font(.title2)
//            .fontWeight(.medium)
//            .padding(.top, 10)
//            .padding(.leading, 30)
//        
//        Text("Contacts: \(barber.contacts)")
//            .font(.title2)
//            .fontWeight(.medium)
//            .padding(.top, 5)
//            .padding(.leading, 30)
//        
//        Spacer()
//            .frame(height: 20)
//        
//        Text("Posts:")
//            .font(.title2)
//            .fontWeight(.medium)
//            .padding(.top, 5)
//            .padding(.leading, 30)
//        List(barber.posts ?? [], id: \.id) { post in
//            postsInRow(post)
//                .font(.title3)
//                .fontWeight(.medium)
//                .padding(.top, 5)
//                .padding(.leading, 30)
//        }
//        
//        Text("Comments:")
//            .font(.title2)
//            .fontWeight(.medium)
//            .padding(.top, 5)
//            .padding(.leading, 30)
//        List(barber.comments, id: \.id) { comment in
//            commentInRow(comment)
//                .font(.title3)
//                .fontWeight(.medium)
//                .padding(.top, 5)
//                .padding(.leading, 30)
//        }
//        Spacer()
//        
//        Text("Reviews:")
//            .font(.title2)
//            .fontWeight(.medium)
//            .padding(.top, 5)
//            .padding(.leading, 30)
//        List(barber.received_reviews, id: \.id) { review in
//            reviewInRow(review)
//                .font(.title3)
//                .fontWeight(.medium)
//                .padding(.top, 5)
//                .padding(.leading, 30)
//        }
////        .navigationTitle("Comments:")
////            .font(.title2)
////            .fontWeight(.medium)
////            .padding(.top, 5)
////            .padding(.leading, 30)
//        
////        Text("Skills/Experience: ")
////            .font(.title2)
////            .fontWeight(.medium)
////            .padding(.top, 5)
////            .padding(.leading, 30)
////            .padding(.bottom, 15)
//
//        Spacer()
//    }
//}
//
//
//private func commentInRow(_ comment: Comment) -> some View{
//    Text("\(comment.description)")
//}
//
//private func reviewInRow(_ review: Review) -> some View{
//    Text("\(review.description)")
//}
//
//private func postsInRow(_ post: Post) -> some View{
//    VStack{
//        Text("\(post.title)")
//        Text("\(post.description)")
//        if(post.image_path != nil){
//            AsyncImage(url: URL(string: post.image_path ?? "https://imgur.com/a/R38J6SV")) { image in
//                        image
//                            .resizable()
//                            .scaledToFit()
//                    } placeholder: {
//                        ProgressView()
//                    }
//                    .frame(width: 300, height: 200)
//                    .padding()
//        }
//    }
//}


////
////#Preview {
////    BarberVC(barber: barbers[0])
////}

import SwiftUI


struct BarberVC: View {
    var barber: Barber
    
    var body: some View {
        ScrollView {
            VStack {
                barberPage(barber)
            }
        }
        .navigationTitle("Barber")
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
            .padding(.all, 10)
        
        sectionTitle("Posts")
        dynamicList(items: barber.posts ?? [])
        
        sectionTitle("Comments")
        dynamicList(items: barber.comments)
        
        sectionTitle("Reviews")
        dynamicList(items: barber.received_reviews)
        
    }
}

private func sectionTitle(_ text: String) -> some View {
    Text(text)
        .font(.title2)
        .fontWeight(.medium)
        .padding(.horizontal, 30)
        .padding(.top, 10)
}

private func dynamicList<T: Identifiable>(items: [T]) -> some View where T: CustomStringConvertible {
    VStack {
        ForEach(items, id: \.id) { item in
            Text(item.description)
                .font(.title3)
                .fontWeight(.medium)
                .padding(.all, 10)
        }
    }
}

private func commentInRow(_ comment: Comment) -> some View {
    Text("\(comment.description)")
}

private func reviewInRow(_ review: Review) -> some View {
    Text("\(review.description)")
}

private func postsInRow(_ post: Post) -> some View {
    VStack {
        Text("\(post.title)")
        Text("\(post.description)")
        if let imagePath = post.image_path, let url = URL(string: imagePath) {
            AsyncImage(url: url) { image in
                image
                    .resizable()
                    .scaledToFit()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 300, height: 200)
            .padding()
        }
    }
}

//struct BarberVC_Previews: PreviewProvider {
//    static var previews: some View {
//        BarberVC()
//    }
//}

