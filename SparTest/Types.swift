//
//  Types.swift
//  SparTest
//
//  Created by Nikolay Bogdanov on 31.01.2024.
//

import Foundation

struct Review: Hashable {
    var name: String
    var date: String
    var rating: Int
    var description: String
}

struct Characteristic: Hashable {
    var name: String
    var value: String
}

struct Product {
    var title: String
    var preview: String
    var description: String
    var rating: Float
    var characteristics: [Characteristic]
    var reviews: [Review] = []
}
