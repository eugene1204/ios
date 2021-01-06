//
//  BountyViewController.swift
//  sibal
//
//  Created by yujin son on 2020/08/05.
//  Copyright © 2020 yujin son. All rights reserved.
//

import UIKit

class BountyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let bundleIdentifier =  Bundle.main.bundleIdentifier
        print(bundleIdentifier ?? 0)
        // Do any additional setup after loading the view.
    }
    let bundleIdentifier =  Bundle.main.bundleIdentifier
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
