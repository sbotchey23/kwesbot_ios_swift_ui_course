//
//  LocationModel.swift
//  Africa
//
//  Created by Kwesi A Botchey on 01/12/2023.
//

import Foundation
import MapKit

struct NationalParkLocation: Codable, Identifiable {
    let id: String
    let name: String
    let image: String
    let longitude: Double
    let latitude: Double
    
    //Computed Property
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
