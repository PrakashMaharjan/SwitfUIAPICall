//
//  PostListViewModel.swift
//  SwiftUIFetchingData
//
//  Created by prakash Maharjan on 8/6/20.
//  Copyright © 2020 pm. All rights reserved.
//

import Foundation

class PostListViewModel: ObservableObject {
    @Published var posts = [PostViewModel]()
    
    init() {
        
        Service().getPosts { posts in
            
            if let posts = posts {
                self.posts = posts.map(PostViewModel.init)
            }
        }
        
    }
    
}

struct PostViewModel {
    
    var post: Post
    
    init(post: Post) {
        self.post = post
    }
    
    var id: Int {
        return self.post.id
    }
    
    var title: String {
        return self.post.title
    }
    
    var body: String {
        return self.post.data
    }
    
}
