//
//  MapView.swift
//  Africa
//
//  Created by Kwesi A Botchey on 15/11/2023.
//

import SwiftUI
import MapKit

struct MapView: View {
    // MARK: - PROPERTIES
    
    @State private var region: MKCoordinateRegion = {
    var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
    var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
    var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)

    return mapRegion
    }()
    
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
        
    // MARK: - BODY
    var body: some View {
        // MARK: - No.1 BASIC MAP
        //Map(coordinateRegion: $region)
        
        // MARK: - No.2 ADVANCED MAP
        Map(coordinateRegion: $region, annotationItems: locations, annotationContent: { items in
            
        })
    }
}

// MARK: - PREVIEW

#Preview {
    MapView()
}
