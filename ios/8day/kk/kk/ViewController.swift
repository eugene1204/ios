//
//  ViewController.swift
//  kk
//
//  Created by yujin son on 2020/08/19.
//  Copyright © 2020 yujin son. All rights reserved.
//

import UIKit

class ViewController: UIViewController, MTMapViewDelegate  {
var mapView: MTMapView?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mapView = MTMapView(frame: CGRect(x:0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height ))
        
        if let mapView = mapView {
            mapView.delegate = self
            mapView.baseMapType = .standard
            self.view.addSubview(mapView)
          //  self.view.addSubview(authButton2)
           // self.view.insertSubview(authButton2, at: 1)
            
        }
        
    }


}

