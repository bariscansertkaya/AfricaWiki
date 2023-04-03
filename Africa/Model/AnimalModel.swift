//
//  AnimalModel.swift
//  Africa
//
//  Created by Barış Can Sertkaya on 3.04.2023.
//

import Foundation

struct Animal: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}
