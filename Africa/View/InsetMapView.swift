//
//  InsetMapView.swift
//  Africa
//
//  Created by Barış Can Sertkaya on 3.04.2023.
//

import SwiftUI
import MapKit

struct InsetMapView: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599), span: MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0))
    
    var body: some View {
       Map(coordinateRegion: $region)
            .overlay(
                NavigationLink(destination: MapView()) {
                    HStack {
                        Image(systemName: "mappin.circle")
                            .foregroundColor(.white)
                            .imageScale(.large)
                        Text("Locations")
                            .foregroundColor(.accentColor)
                            .imageScale(.large)
                    }
                    .padding(.vertical,10)
                    .padding(.horizontal,15)
                    .background(
                        Color.black
                            .opacity(0.4)
                            .cornerRadius(12)
                    )
                }
                .padding(12)
                ,alignment: .topTrailing
                
            )
            .frame(height: 260)
            .cornerRadius(12)
    }
}

struct InsetMapView_Previews: PreviewProvider {
    static var previews: some View {
        InsetMapView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
