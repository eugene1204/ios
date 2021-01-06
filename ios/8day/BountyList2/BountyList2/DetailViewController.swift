//
//  DetailViewController.swift
//  BountyList2
//
//  Created by yujin son on 2020/12/24.
//  Copyright © 2020 yujin son. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    // MVVM
    
    // Model
    // - BountyInfo
    // > BountInfo 만들기
    
    // View
    // - imgView, nameLabel, bountylabel
    // > view들은 viewModel을 통해서 구성된다.
    
    // ViewModel
    // - DetailViewModel
    // > 뷰레이어에서 필요한 메서드 만들기
    // > 모델 가지고 있기, BountyInfo들...
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bountyLabel: UILabel!
    var name: String?
    var bounty:Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    func updateUI(){
        if let name = self.name, let bounty = self.bounty{
        imgView.image = UIImage(named: "\(name).jpg")
        nameLabel.text = name
        bountyLabel.text = "\(bounty)"
    }
    }

}
