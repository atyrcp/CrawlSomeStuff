//
//  ViewController.swift
//  Crawl Some Stuff
//
//  Created by alien on 2019/6/28.
//  Copyright © 2019 z. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var testLabel: UILabel!
    
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
        let userStore = UserDefaults.standard
//        userStore.set(9876, forKey: "num")
//        userStore.set(false, forKey: "boo")
//        userStore.removePersistentDomain(forName: Bundle.main.bundleIdentifier!)
        let ans = userStore.value(forKey: "num")
        print(ans)
        
        print("git test 1")
        
        print("git test 2")
        
        print("git test 3")
        
        print("git test 4")
        
        print("git test 5-1")
        
        var vid = Video()
        
//        vid.id = 2
        let id = vid.id
        
        var dataBase = DataBase(vid: vid)
        
        print("------")
        print(testLabel.text)
        testLabel.text = nil
        print(testLabel.text)
        print(testLabel.frame)
        
//        dataBase.vid.id = 1
    }
}

class Video {
    let name: String = "name"
    private(set) var id: Int = 1
}

struct DataBase {
    var vid: Video
    
    
}


class Test {
    var name: String?
    
    
    init() {
        name = ""
    }
}

class Tess: Test {
    
}
