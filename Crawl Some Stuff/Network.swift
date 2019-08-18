//
//  Network.swift
//  Crawl Some Stuff
//
//  Created by alien on 2019/8/14.
//  Copyright © 2019 z. All rights reserved.
//

import Foundation

class Network {
    
    
    func getSome(success: @escaping (Data) -> Void) {
        let endPoint = "https://apistage2.aisleconnect.us/ac.server/rest/v2.5/checklist/:id"
//        let info = "grant_type=password&username=paul.lin@lineagenetworks.com&password=welcome1&client_id=my-client&client_secret=my-secret&scope=read&method=POST"
        let paramater = ":id"
        let url = URL(string: endPoint)
        var request = URLRequest(url: url!)
//        request.httpMethod = "POST"
//        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
//        request.setValue("application/json", forHTTPHeaderField: "Accept")
//        request.httpBody = info.data(using: String.Encoding.utf8)!
        
        let session = URLSession.shared
        
        let task = session.dataTask(with: request) { (data, response, error) in
            if error != nil {
                print(error)
            }
            
            if response != nil {
                print(response)
            }
            
            if data != nil {
                success(data!)
            }
        }
        
        task.resume()
    }
}
