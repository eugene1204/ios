//
//  DetailViewController.swift
//  BountyList
//
//  Created by yujin son on 2021/01/09.
//  Copyright © 2021 yujin son. All rights reserved.
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
//    var name: String?
//    var bounty:Int?
//    var bountyInfo: BountyInfo?
    let viewModel = DetailViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    func updateUI(){
        if let bountyInfo = viewModel.bountyInfo
                {
                    imgView.image = bountyInfo.image
                    nameLabel.text = bountyInfo.name
                    bountyLabel.text = "\(bountyInfo.bounty)"
                }
//        if let bountyInfo = self.bountyInfo
//        {
//            imgView.image = bountyInfo.image
//            nameLabel.text = bountyInfo.name
//            bountyLabel.text = "\(bountyInfo.bounty)"
//        }
//        if let name = self.name, let bounty = self.bounty{
//        imgView.image = UIImage(named: "\(name).jpg")
//        nameLabel.text = name
//        bountyLabel.text = "\(bounty)"
//    }
    }

}
class DetailViewModel{
    var bountyInfo: BountyInfo?
    
    func update(model: BountyInfo?){
        bountyInfo = model
    }
}
