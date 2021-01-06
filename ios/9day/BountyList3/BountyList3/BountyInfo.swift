//
//  BountyInfo.swift
//  BountyList3
//
//  Created by yujin son on 2020/12/28.
//  Copyright © 2020 yujin son. All rights reserved.
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
