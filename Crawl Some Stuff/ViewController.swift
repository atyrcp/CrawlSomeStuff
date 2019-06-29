//
//  ViewController.swift
//  Crawl Some Stuff
//
//  Created by alien on 2019/6/28.
//  Copyright © 2019 z. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    func scrapeInstagramData(from url: String) {
        let baseURL = "https://www.instagram.com/"
        guard let url = URL(string: baseURL + url) else {return}
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else {return}
            guard let htmlString = String(data: data, encoding: .utf8) else {return}
            
            print(htmlString)
            
        }
        
        task.resume()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrapeInstagramData(from: "nasa")
        // Do any additional setup after loading the view.
    }


}

