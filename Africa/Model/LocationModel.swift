//
//  LocationModel.swift
//  Africa
//
//  Created by Barış Can Sertkaya on 4.04.2023.
//

import Foundation
import MapKit

struct Location: Codable,Identifiable {
    var id: String
    var name: String
    var image: String
    var latitude: Double
    var longitude : Double
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
