//
//  MapView.swift
//  SwiftUI_lists
//
//  Created by Maxime Britto on 24/07/2019.
//  Copyright © 2019 Maxime Britto. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MKMapView {
        return MKMapView(frame: .zero)
    }
    
    func updateUIView(_ map: MKMapView, context: UIViewRepresentableContext<MapView>) {
        let coordinate = CLLocationCoordinate2D(
                    latitude: 48.9041186, longitude: 2.3674269)
        let span = MKCoordinateSpan(latitudeDelta: 0.001, longitudeDelta: 0.009)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        map.setRegion(region, animated: true)
    }
}

#if DEBUG
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
#endif
