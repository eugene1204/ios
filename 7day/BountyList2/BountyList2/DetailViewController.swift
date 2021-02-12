//
//  DetailViewController.swift
//  BountyList
//
//  Created by yujin son on 2021/01/09.
//  Copyright © 2021 yujin son. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bountyLabel: UILabel!
    

    let viewModel = DetailViewModel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }

    func updateUI(){
        // segue로 받아온 데이터를 View로 보여주는 코드
        if let bountyInfo = viewModel.bountyInfo {
            imgView.image = bountyInfo.image
            nameLabel.text = bountyInfo.name
            bountyLabel.text = "\(bountyInfo.bounty)"
        }

    }
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

}
class DetailViewModel{
    var bountyInfo: BountyInfo?
    
    func update(model: BountyInfo?){
        bountyInfo = model
    }
}

