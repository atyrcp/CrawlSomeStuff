//
//  MockData.swift
//  Crawl Some Stuff
//
//  Created by alien on 2019/7/23.
//  Copyright © 2019 z. All rights reserved.
//

import Foundation

struct MockData: Codable {
    
    var name = ""
    let id: Int
    
    
    init(jsonDictionary: [String: Any]) {
        self.name = jsonDictionary["name"] as? String ?? ""
        self.id = jsonDictionary["id"] as? Int ?? 0
    }
    
    init?(data: Data){
        guard let json = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] else {return nil}
        self.init(jsonDictionary: json)
    }
    
    init?(jsonString: String) {
        let data = Data(jsonString.utf8)
        self.init(data: data)
    }
}
