//
//  UberMpapView.swift
//  uber
//
//  Created by Manoj Amsavel on 7/21/23.
//

import SwiftUI
import MapKit
struct UberMapviewRepresentable: UIViewRepresentable{
    
    
    
let mapView = MKMapView()
    
    
    func makeUIView(context: Context) -> some UIView{
        mapView.isRotateEnabled = false
        mapView.showsUserLocation = true
        mapView.userTrackingMode = .follow
        
        return mapView

    }
    
    func updateUIView(_ _uiView: UIViewType, context: Context){
        
    }
    func makeCoordinator() -> MapCoordinator {
        return MapCoordinator(parent:self)
    }
}
extension UberMapviewRepresentable{
    class MapCoordinator: NSObject,MKMapViewDelegate{
        let parent:UberMapviewRepresentable
        
       init(parent: UberMapviewRepresentable) {
            self.parent = parent
            super.init()
        }
    }
}
