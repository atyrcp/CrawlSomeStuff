//
//  ViewController.swift
//  Crawl Some Stuff
//
//  Created by alien on 2019/6/28.
//  Copyright © 2019 z. All rights reserved.
//

import UIKit
import SafariServices
import AuthenticationServices

class ViewController: UIViewController {
    @IBOutlet weak var testLabel: UILabel!
    
    var authSession: ASWebAuthenticationSession?
    
    func getAuthTokenWithWebLogin() {
        
        let authURL = URL(string: "https://apistage2.aisleconnect.us/ac.server/oauth/token")
//        let authURL = URL(string: "https://apistage2.aisleconnect.us/ac.server/oauth/token/?grant_type=password&username= paul.lin@lineagenetworks.com&password=welcome1&client_id=my-client&my-secret=my-secret&scope=read")
//        let authURL = URL(string: "https://apistage2.aisleconnect.us/ac.server/oauth/token?grant_type=password&username=paul.lin@lineagenetworks.com&password=welcome1&client_id=my-client&client_secret=my-secret&scope=read&method=POST")
        
//        let authURL = URL(string: "https://apistage2.aisleconnect.us/ac.server/oauth/token?grant_type=<password>?username= <paul.lin@lineagenetworks.com>?password=<welcome1>?client_id=<my-client>?my-secret=<my-secret>?scope=<read>")
        
        let callbackUrlScheme = "Crawl Some Stuff://auth"
        
        self.authSession = ASWebAuthenticationSession.init(url: authURL!, callbackURLScheme: callbackUrlScheme, completionHandler: { (callBack:URL?, error:Error?) in
            
            // handle auth response
            guard error == nil, let successURL = callBack else {
                return
            }
            
            let oauthToken = NSURLComponents(string: (successURL.absoluteString))?.queryItems?.filter({$0.name == "code"}).first
            
            // Do what you now that you've got the token, or use the callBack URL
            print(oauthToken ?? "No OAuth Token")
        })
        
        // Kick it off
        self.authSession?.start()
    }
    
    
//    func scrapeInstagramData(from url: String) {
//        let baseURL = "https://www.instagram.com/"
//        guard let url = URL(string: baseURL + url) else {return}
////        guard let url = URL(string: url) else {return}
//
//        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
//            guard let data = data else {return}
//            guard let htmlString = String(data: data, encoding: .utf8) else {return}
//
////            print(htmlString)
//            let leftSideString = """
//  """
//            let rightSideString = """
//  """
////            let rangeOfTheData = leftSideString.uppercased()..<rightSideString.lowercased()
////                    let valueWeWantToGrab = htmlString
////                    print(valueWeWantToGrab)
////            print(rangeOfTheData)
//        }
//
//        task.resume()
//    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        getAuthTokenWithWebLogin()
        
        let network = Network()

        network.getSome { (daa) in
            print(daa)
        }
        
        
        
    }
}
