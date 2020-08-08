    //
    //  Row.swift
    //  SwiftUIFetchingData
    //
    //  Created by prakash Maharjan on 8/8/20.
    //  Copyright © 2020 pm. All rights reserved.
    //
    
    import SwiftUI
    
    struct Row: View {
        
        let post: PostViewModel
        
        var body: some View {
            VStack(alignment: .leading, spacing: 20) {
                Text(post.title)
                    .font(.title)
                    .fixedSize(horizontal: false, vertical: true)
                    .lineLimit(nil)
                Text(post.body)
                    .foregroundColor(Color.gray)
                    .fixedSize(horizontal: false, vertical: true)
                    .lineLimit(nil)
                Spacer(minLength: 5)
            }
        }
    }
    
