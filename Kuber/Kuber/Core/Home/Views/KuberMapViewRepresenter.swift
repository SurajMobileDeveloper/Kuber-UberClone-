//
//  KuberMapViewRepresenter.swift
//  Kuber
//
//  Created by Suraj Kumar on 19/04/23.
//

import SwiftUI
import MapKit

struct KuberMapViewRepresenter: UIViewRepresentable {
    
    let mapView = MKMapView()
    let locationManager = LocationManager()
    
    func makeUIView(context: Context) -> some UIView {
        mapView.delegate = context.coordinator
        mapView.isRotateEnabled = false
        mapView.isUserInteractionEnabled = true
        mapView.userTrackingMode = .follow
        debugPrint("MakeView")
        return mapView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        debugPrint("updateUIView")
    }
    
    func makeCoordinator() -> Coordinator {
        debugPrint("MakeCoordinator")
        return Coordinator(parent: self)
    }
    
}


extension KuberMapViewRepresenter {
    
    class Coordinator: NSObject, MKMapViewDelegate {
        let parent: KuberMapViewRepresenter
        
        init(parent: KuberMapViewRepresenter) {
            self.parent = parent
            debugPrint("init")
            super.init()    
        }
        
        func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
            let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude, longitude:  userLocation.coordinate.longitude), span: MKCoordinateSpan(latitudeDelta: 5.0, longitudeDelta: 5.0))
            debugPrint("didUpdate")

            parent.mapView.setRegion(region, animated: true)
        }
    }
}
