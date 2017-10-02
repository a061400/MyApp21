//
//  ViewController.swift
//  MyApp21
//
//  Created by 謝尚霖 on 2017/9/29.
//  Copyright © 2017年 謝尚霖. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mapView: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 產生中心點
        let center = CLLocation(latitude: 24.150607, longitude: 120.647238)
        centerLocation(location: center, mapView: mapView)
        
        //插針
        let ann = MKPointAnnotation()
        ann.coordinate = CLLocationCoordinate2DMake(24.150607, 120.647238)
        mapView.addAnnotation(ann)
        
        
    }
    //  定位及縮放
    private func centerLocation(location: CLLocation, mapView: MKMapView) {
        
        
        let dis:CLLocationDistance = 1000 // 以公尺計
        
        let cooordRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, dis, dis)
        mapView.setRegion(cooordRegion, animated: true)
        
        
    }


}

