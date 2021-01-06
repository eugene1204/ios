//
//  ViewController.swift
//  kkk
//
//  Created by yujin son on 2020/08/19.
//  Copyright © 2020 yujin son. All rights reserved.
//

import UIKit

class ViewController: UIViewController, MTMapViewDelegate {
    var mapView: MTMapView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mapView
            = MTMapView(frame: self.view.bounds)
        if let mapView = mapView {
            mapView.delegate = self
            mapView.baseMapType = .standard
            self.view.addSubview(mapView)
        }
    }


}

