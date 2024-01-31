//
//  ReviewsScrollView.swift
//  SparTest
//
//  Created by Nikolay Bogdanov on 31.01.2024.
//

import SwiftUI

struct ReviewsScrollView: View {
    var reviews: [Review]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(reviews, id: \.self) { review in
                    ReviewPreview(review: review)
                        .padding([.top, .bottom])
                        .padding([.leading, .trailing], 6)
                        .shadow(color: .gray.opacity(0.2), radius: 6)
                }
            }
        }
    }
}
