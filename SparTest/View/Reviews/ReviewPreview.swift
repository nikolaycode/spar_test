//
//  ReviewPreview.swift
//  SparTest
//
//  Created by Nikolay Bogdanov on 31.01.2024.
//

import SwiftUI

struct ReviewPreview: View {
    var review: Review
    
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading, spacing: 6) {
                Text(review.name)
                    .bold()
                
                Text(review.date)
                    .font(.subheadline)
                    .foregroundStyle(.gray)
                
                HStack {
                    ForEach(0..<5) { index in
                        Image(systemName: "star.fill")
                            .foregroundStyle(review.rating > index ? .yellow : .gray)
                    }
                }
                
                Text(review.description)
                    .font(.footnote)
            }
            .padding()
            
            Spacer()
        }
        .frame(width: 260, height: 160)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
    }
}

#Preview {
    ReviewPreview(review: Review(name: "Николай Б.", date: "21 января 2021", rating: 4, description: "тест"))
}
