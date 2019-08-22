//
//  ViewController.swift
//  Crawl Some Stuff
//
//  Created by alien on 2019/6/28.
//  Copyright © 2019 z. All rights reserved.
//

import UIKit
import Gzip

class ViewController: UIViewController {
    @IBOutlet weak var testLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let network = Network()

        network.getSome { (daa) in
            print("got")
            print(daa)
            
            let dafa = try? JSONSerialization.jsonObject(with: daa, options: []) as? [String: Any]
            print(dafa)
//            print(daa.isGzipped)
//            let dafa = try? daa.gunzipped()
//            print(dafa)
        }
        
        
        
    }
}
