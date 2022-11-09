//
//  DataModel.swift
//  NetSet
//
//  Created by Sushil Chaudhary on 11/4/22.
//

import Foundation
struct DataModel{
    let data: [Datum]
}

struct Datum: Codable {
    let recipe: [Recipe]

    enum CodingKeys: String, CodingKey {
        case recipe
    }
}
struct Recipe: Codable {
    let index:Int
    enum CodingKeys: String, CodingKey {
        case index
    }
}
