//
//  Post.swift
//  SwiftUIFetchingData
//
//  Created by prakash Maharjan on 8/6/20.
//  Copyright © 2020 pm. All rights reserved.
//

import Foundation

struct Post: Codable {
    let id: Int
    let title: String
    let data: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case title
        case data = "body"
    }
}


