//  
//  DogApiViewController.swift
//  UdacityRequest
//
//  Created by Anton Vishnevsky on 20/02/2019.
//  Copyright © 2019 Wishell. All rights reserved.
//

import UIKit

final class DogApiViewController: UIViewController {
    
    var model: DogApiModelInput!
    lazy var contentView: DogApiViewInput = { return view as! DogApiViewInput }()
    
}

// MARK: - DogApiModelOutput
extension DogApiViewController: DogApiModelOutput {}

// MARK: - DogApiViewControllerInput
extension DogApiViewController: DogApiViewControllerInput {}
