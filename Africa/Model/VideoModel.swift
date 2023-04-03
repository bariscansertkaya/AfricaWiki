//
//  VideoModel.swift
//  Africa
//
//  Created by Barış Can Sertkaya on 3.04.2023.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    var thumbnail: String {
        "video-\(id)"
    }
}
