//
//  Location.swift
//  SwiftfulMapApp
//
//  Created by Christian Nachtrieb on 1/13/22.
//

import Foundation
import MapKit

struct Location: Identifiable, Equatable {

    let name: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let description: String
    let imageNames: [String]
    let link: String
    
    // Ensuring that we don't accidentally create two different objects from same location
    var id: String {
        name + cityName
    }
    
    // Equatable. Read like, "Does left-hand side = right-hand side?"
    static func == (lhs: Location, rhs: Location) -> Bool {
        lhs.id == rhs.id
    }
}
