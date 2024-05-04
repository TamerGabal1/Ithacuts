//
//  NetworkManager.swift
//  Ithacuts
//
//  Created by Tamer Gabal on 5/3/24.
//

import Foundation
import Alamofire

class NetworkManager{
    static let shared = NetworkManager()
    
    private init() {}
    
    private let devEndpoint = "http://10.49.34.94:5000"
    
    let decoder = JSONDecoder()
    
    func getBarbers(completion: @escaping ([Barber]) -> Void){
        
        AF.request(devEndpoint + "/api/users", method:.get)
            .validate()
            .responseDecodable(of: [Barber].self, decoder: decoder){ response in
                switch response.result{
                case .success(let barbers):
                    print(barbers)
                    completion(barbers)
                case .failure(let error):
                    print("Error in NetworkManager.getBarber: \(error.localizedDescription)")
                    completion([])
                }
            }
    }
}
