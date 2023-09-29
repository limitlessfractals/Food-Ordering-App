//
//  Appetizer.swift
//  Food-Ordering-App
//
//  Created by Wuqiong Fan on 9/28/23.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(
        id: 1,
        name: "Asian Flank Steak",
        description: "This perfectly thin cut just melts in your mouth.",
        price: 8.99,
        imageURL: "https://seanallen-course-backend.herokuapp.com/images/appetizers/asian-flank-steak.jpg",
        calories: 300,
        protein: 14,
        carbs: 0)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
}
