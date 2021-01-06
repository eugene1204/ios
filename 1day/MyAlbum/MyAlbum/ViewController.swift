//
//  ViewController.swift
//  MyAlbum
//
//  Created by yujin son on 2020/12/28.
//  Copyright © 2020 yujin son. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   // type을 기재하지 않음 -> 굳이 쓰지 않아도 타입 추론 가능
    var currentValue = 0
    // outlet연결
    // priceLabel의 type은 UILabel이다
    @IBOutlet weak var priceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        refresh()
    }
    @IBAction func showAlert(_ sender: Any) {
        let message = "가격은 ₩\(currentValue) 입니다"
        let alert = UIAlertController(title: "HELLO", message: message, preferredStyle: .alert)
        // alert에 action을 추가한다.
        // OK버튼이 눌렀을때 아무런 액션을 추가하지 않는다. -> nil
        // OK버튼이 눌렀을때 refresh()을 실행하게 한다 -> {action in self.refresh()}
        // ok버튼이 눌렸을떄 refresh() 실행
        let action = UIAlertAction(title: "OK", style: .default, handler: {action in self.refresh()})
        // action을 추가한다.
        alert.addAction(action)
        // alert를 띄워준다.
        present(alert,animated: true,completion: nil)
        
        
    }
    
    func refresh(){
        // arc4random_uniform: 0 ~ 10000까지의 수를 랜덤하게 나오기
        let randomPrice = arc4random_uniform(10000)+1
        currentValue = Int(randomPrice)
        // priceLabel update
        priceLabel.text = "₩\(currentValue)"
    }
}

