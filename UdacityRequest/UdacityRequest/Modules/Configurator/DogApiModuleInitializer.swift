//  
//  DogApiModuleInitializer.swift
//  UdacityRequest
//
//  Created by Anton Vishnevsky on 20/02/2019.
//  Copyright © 2019 Wishell. All rights reserved.
//

import UIKit

final class DogApiModuleInitializer: NSObject {
    
    @IBOutlet weak var viewController: DogApiViewController!
    
    override func awakeFromNib() {
        let configurator = DogApiModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: viewController)
    }
    
}
