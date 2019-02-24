//
//  Repository.swift
//  UdacityRequest
//
//  Created by Anton Vishnevsky on 20/02/2019.
//  Copyright © 2019 Wishell. All rights reserved.
//

import Foundation

enum Result<T> {
    case succes(T)
    case failure(Error)
}

struct dogResources {
    static let randomBreed = "https://dog.ceo/api/breeds/image/random"
}


final class Repository {
    
    let apiClient: ApiClient!
    
    init(apiClient: ApiClient) {
        self.apiClient = apiClient
    }
    
    func getRandomDog(_ complition: @escaping ((Result<Data>) -> Void) ) {
        
        
    }
}
