//
//  Service.swift
//  SwiftUIFetchingData
//
//  Created by prakash Maharjan on 8/6/20.
//  Copyright © 2020 pm. All rights reserved.
//

import Foundation

class Service {
    
    func getPosts(completion: @escaping ([Post]?) -> ()) {
        
        guard let url = URL(string: Constants.baseURL + Constants.postURL) else {
            fatalError("Invalid URL")
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data = data, error == nil else {
                DispatchQueue.main.async {
                    completion(nil)
                }
                return
            }
            
            let posts = try? JSONDecoder().decode([Post].self, from: data)
            
            DispatchQueue.main.async {
                completion(posts)
            }
            
        }.resume()
        
    }
    
}
