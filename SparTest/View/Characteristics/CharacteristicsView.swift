//
//  CharacteristicsView.swift
//  SparTest
//
//  Created by Nikolay Bogdanov on 31.01.2024.
//

import SwiftUI

struct CharacteristicsView: View {
    var characteristics: [Characteristic]
    
    var body: some View {
        VStack {
            ForEach(characteristics, id: \.self) { ch in
                HStack {
                    Text(ch.name)
                    HLine().stroke(style: StrokeStyle(lineWidth: 1, dash: [5]))
                    Text(ch.value)
                }
            }
        }
        .font(.subheadline)
    }
}
