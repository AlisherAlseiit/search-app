//
//  DigineticaData.swift
//  AlserGO
//
//  Created by Alish Alseiit on 28.07.2022.
//

import SwiftUI

struct DigineticaData: Codable {
    var query: String
    var sts: [Sts]
    var taps: [Tap]
    var products: [SearchProduct]
    var categories: [SearchCategory]
}

struct Sts: Codable {
    var st: String
    var amount: Int
}

struct Tap: Codable {
    var tap: String
    var relatedSearch: String
}

struct SearchProduct: Codable {
    var id: String
    var available: Bool
    var name: String
    var brand: String
    var price: String
    var score: Double
    var categories: [SearchProductCategory]
    var link_url: String
    var image_url: String
}

struct SearchProductCategory: Codable {
    var id: String
    var name: String
    var direct: Bool
    var link_url: String
    var image_url: String
}

struct SearchCategory: Codable {
    var id: String
    var name: String
    var direct: Bool
    var link_url: String
    var image_url: String
}
