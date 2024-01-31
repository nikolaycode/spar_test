//
//  CharacteristicPreview.swift
//  SparTest
//
//  Created by Nikolay Bogdanov on 31.01.2024.
//

import SwiftUI

struct HLine: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: rect.minX, y: rect.midY))
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY))
        }
    }
}

struct CharacteristicPreview: View {
    var characteristic: Characteristic
    
    var body: some View {
        HStack {
            Text(characteristic.name)
            HLine().stroke(style: StrokeStyle(lineWidth: 1, dash: [5]))
            Text(characteristic.value)
        }
    }
}

#Preview {
    CharacteristicPreview(characteristic: Characteristic(name: "name", value: "value"))
}
