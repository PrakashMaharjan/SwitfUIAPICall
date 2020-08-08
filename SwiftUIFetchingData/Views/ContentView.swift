//
//  ContentView.swift
//  SwiftUIFetchingData
//
//  Created by prakash Maharjan on 8/6/20.
//  Copyright © 2020 pm. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var postListVM = PostListViewModel()
    
    var body: some View {
        
        NavigationView{
            List(self.postListVM.posts, id: \.id) { post in
                
                NavigationLink(destination: DetailView(post: post)) {
                    Row(post: post)
                }
                
            }.navigationBarTitle(Text("API Fetching"))
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
