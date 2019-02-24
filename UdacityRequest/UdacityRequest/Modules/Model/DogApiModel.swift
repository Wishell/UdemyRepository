//  
//  DogApiModel.swift
//  UdacityRequest
//
//  Created by Anton Vishnevsky on 20/02/2019.
//  Copyright © 2019 Wishell. All rights reserved.
//

import Foundation

final class DogApiModel: DogApiModelInput {
    
    weak var output: DogApiModelOutput!
    var repository: Repository!
    
    func load() {
        repository.getRandomDog(){
            
        }
    }
    
}
