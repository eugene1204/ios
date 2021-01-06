//
//  ViewController.swift
//  MyAlbum
//
//  Created by eugene on 2020/07/18.
//  Copyright © 2020 eugene. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var currentValue=0
    
    @IBOutlet weak var priceLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        refresh()
        
    }

    @IBAction func AAlert(_ sender: Any) {
            let message="가격 \(currentValue) 입니다"
            let alert=UIAlertController(title: "Hello", message: message, preferredStyle: .alert)
            
        let action = UIAlertAction(title:"OK", style:.default, handler:{action in self.refresh()})
        //closer ->{action in self.refresh()}
        //ok를 누르면 refresh() 작동
            alert.addAction(action)
            present(alert,animated: true,completion:nil)
          
        
    }
    
    func refresh(){
        let randomPrice=arc4random_uniform(10000)+1
        currentValue=Int(randomPrice)
        priceLable.text="₩ \(currentValue)"
    }
}

