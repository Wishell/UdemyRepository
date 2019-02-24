//  
//  DogApiView.swift
//  UdacityRequest
//
//  Created by Anton Vishnevsky on 20/02/2019.
//  Copyright © 2019 Wishell. All rights reserved.
//

import UIKit

protocol DogApiViewInput: class {}

final class DogApiView: UIView {
    
    @IBAction func UploadTap(_ sender: Any) {
        
    }
    
    @IBOutlet weak var picture: UIImageView!
    
    
    
    
}

// MARK: - DogApiViewInput
extension DogApiView: DogApiViewInput {}
