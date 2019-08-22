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
        let endPoint = "https://tcgbusfs.blob.core.windows.net/blobyoubike/YouBikeTP.gz"
        let url = URL(string: endPoint)
        let request = URLRequest(url: url!)
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
//                print(response)
            }
            
            if data != nil {
                success(data!)
            }
        }
        
        task.resume()
    }
}
