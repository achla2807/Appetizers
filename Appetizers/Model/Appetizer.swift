//
//  Appetizer.swift
//  Appetizers
//
//  Created by Achla Ajay on 02/02/25.
//

import Foundation

struct Appetizer: Decodable, Identifiable{
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable{
    let request: [Appetizer]
}

struct MockData{
    static let sampleAppetizer = Appetizer(id: 0001,
                                          name: "test",
                                          description: "this is a description",
                                          price: 60.9,
                                          imageURL: "",
                                          calories: 99,
                                          protein: 99,
                                          carbs: 99)
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
}
