//
//  ApiClient.swift
//  UdacityRequest
//
//  Created by Anton Vishnevsky on 20/02/2019.
//  Copyright © 2019 Wishell. All rights reserved.
//

import Foundation

struct Resource {
    let url: URL
    let method: Verbs
    
    init(url: URL, method: Verbs) {
        self.url = url
        self.method = method
    }
}

enum Verbs: String {
    case get = "GET"
    case post = "POST"
}

extension URLRequest {
    init(_ resource: Resource){
        self.init(url: resource.url)
        self.httpMethod = resource.method.rawValue
    }
}

final class ApiClient {
    
    func load( resource: Resource, _ complition: @escaping ((Result<Data>) -> Void)) {
        let request = URLRequest(resource)
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            switch data {
            case .some(let data):
                complition(.succes(data))
            case .none:
                complition(.failure(error!))
            }
        }
        task.resume()
    }
    
}
