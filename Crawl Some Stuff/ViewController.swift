//
//  ViewController.swift
//  Crawl Some Stuff
//
//  Created by alien on 2019/6/28.
//  Copyright © 2019 z. All rights reserved.
//

import UIKit
//import Gzip

class ViewController: UIViewController {
    @IBOutlet weak var testLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let network = Network()

//        network.getSome { (daa) in
//            print("got")
//            print(daa)
//
//            let dafa = try? JSONSerialization.jsonObject(with: daa, options: []) as? [String: Any]
//            let retVal = dafa?["retVal"] as? [String: Any]
//            let first: Dictionary? = retVal?["0001"] as? [String: Any]
//
//            print(first)
////            print(daa.isGzipped)
////            let dafa = try? daa.gunzipped()
////            print(dafa)
//        }
        
        let b = B()
        b.setA()
        let a = A()
        a.num = 5
        b.a = a
        
        
    }
}

class A {
    var num = 1
}

class B {
    var a = A() {
        didSet {
            print("set A")
        }
    }
    
    func setA() {
        a.num = 2
    }
}
