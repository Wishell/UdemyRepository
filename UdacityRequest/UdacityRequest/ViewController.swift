//
//  ViewController.swift
//  UdacityRequest
//
//  Created by Anton Vishnevsky on 20/02/2019.
//  Copyright © 2019 Wishell. All rights reserved.
//

import UIKit

class ViewControllerTemp: UIViewController {
    
    @IBOutlet weak var Image: UIImageView!
    
    let urlString = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGedOBloweM0lHPTY71Y9W7QHgYR4B-Pmw3_cC8QcvRyPq07g7"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    @IBAction func uploadTap(_ sender: Any) {
        guard let url = URL(string: urlString) else { print ("Invalid url"); return }
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data =  data  else { print(error); return }
                DispatchQueue.main.async {
                    print(String(data: data, encoding: .utf8))
                    let downImg = UIImage(data: data)
                    self.Image.image = downImg
                }
        }
        task.resume()
        
    }
    

    
    



}

