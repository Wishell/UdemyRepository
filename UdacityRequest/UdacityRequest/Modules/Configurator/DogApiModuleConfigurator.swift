//  
//  DogApiModuleConfigurator.swift
//  UdacityRequest
//
//  Created by Anton Vishnevsky on 20/02/2019.
//  Copyright © 2019 Wishell. All rights reserved.
//

import UIKit

final class DogApiModuleConfigurator {
    
    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {
        if let viewController = viewInput as? DogApiViewController {
            configure(viewController: viewController)
        }
    }
    
    private func configure(viewController: DogApiViewController) {
        let model = DogApiModel()
        model.output = viewController
        model.repository = Repository(apiClient: ApiClient())
        
        viewController.model = model
    }
    
}
