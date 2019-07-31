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
//        guard let url = URL(string: url) else {return}
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else {return}
            guard let htmlString = String(data: data, encoding: .utf8) else {return}
            
//            print(htmlString)
            let leftSideString = """
  """
            let rightSideString = """
  """
//            let rangeOfTheData = leftSideString.uppercased()..<rightSideString.lowercased()
//                    let valueWeWantToGrab = htmlString
//                    print(valueWeWantToGrab)
//            print(rangeOfTheData)
        }
        
        task.resume()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrapeInstagramData(from: "nasa")
        // Do any additional setup after loading the view.
        

        //git testing here
        print("git branch develop")
        
        //test create a sub01 branch under develop branch
        print("git checkout -b sub01 develop")
        
        //test another branch
        print("git checkout -b develop2")
        
        //test add sub02 branch and push it
        print("git checkout -b sub02 develop2")
        
        let con: [String: Any] = ["ss": 1, "dd": "5"]
        let con2 = con as [String: Any]
        let ans1 = con2["ss"] as? String != nil ? "3": "4"
        print("---")
        print(ans1)
        print(type(of: ans1))
        print("---")
        
        print("===")
        let ans2 = con2["dd"]
        print(ans2)
        print(type(of: ans2))
        
        print("===")
        let ans2String = con2["dd"] as? String
        print(ans2String)
        print(type(of: ans2String))
        
        
        print("===")
        let ans2Int = con2["dd"] as? Int
        print(ans2Int)
        print(type(of: ans2Int))
        print("===")
        
        
        let ans3 = con2["dd"] as? String ?? "0"
        print(ans3)
        print("---")
        
        let a: AnyObject? = UIView()
        let b = a as? String ?? "abc"
        
        let c: Any? = 5
//        let d = String(c)
//        let e = String(a)
        
        let jsonString = """
{"name": "aaa", "id": 1}
"""

        let mock = MockData(jsonString: jsonString)
        print(mock)
        
        print("!!!!!")
        print(mock?.name)
        print("!!!!!")
        
        
        let dictionaryData: [String : String] = ["5"  : "Five",
                                                 "6"  : "Siv",
                                                 "7"  : "Seven",
                                                 "1"  : "One",
                                                 "2"  : "Two",
                                                 "3"  : "Three",
                                                 "4"  : "Four",
                                                 "8"  : "Eight"]
        
        let sortedByKey = dictionaryData.keys.sorted(by: <)
        
        print(sortedByKey)
    }
}

