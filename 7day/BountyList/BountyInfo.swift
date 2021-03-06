//
//  BountyInfo.swift
//  BountyList
//
//  Created by yujin son on 2021/01/09.
//  Copyright © 2021 yujin son. All rights reserved.
//

import UIKit


struct BountyInfo {
    let name:String
    let bounty: Int
    
    var image: UIImage? {
        return UIImage(named: "\(name).jpg")
    }
    
    init(name: String, bounty: Int){
        self.name = name
        self.bounty = bounty
    }
}
