//
//  DetailView.swift
//  SwiftUIFetchingData
//
//  Created by prakash Maharjan on 8/8/20.
//  Copyright © 2020 pm. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    let post: PostViewModel
    
    var body: some View {
        ScrollView{
            DetailViewRow(post: post)
        }
        .offset(x: 0, y: 0)
        .navigationBarTitle("Detail View")
        
        
    }
}
