//
//  DetailViewController.swift
//  BountyList4
//
//  Created by yujin son on 2021/02/12.
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
        prepareAnimation()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        showAnimation()
    }

    private func prepareAnimation(){
        // nameLabel이 밖으로 나가게하기
        nameLabelCenterX.constant = view.bounds.width
        bountyLabelCenterX.constant = view.bounds.width
    }
    
    private func showAnimation(){
        nameLabelCenterX.constant = 0
        bountyLabelCenterX.constant = 0
        
        // 위에 수정한내용 적용하기
//        UIView.animate(withDuration: 0.3){
//            self.view.layoutIfNeeded()
//        }
        
//        UIView.animate(withDuration: 0.3, delay: 0.1, options: .curveEaseIn, animations: {self.view.layoutIfNeeded()}, completion: nil)
        UIView.animate(withDuration: 0.5, delay: 0.2, usingSpringWithDamping: 0.6, initialSpringVelocity: 2, options: .allowUserInteraction, animations: self.view.layoutIfNeeded, completion: nil)
        //usingSpringWithDamping : 스프링같은 효과를 준다
        
        UIView.transition(with: imgView, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
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
    
    @IBOutlet weak var bountyLabelCenterX: NSLayoutConstraint!
    
    @IBOutlet weak var nameLabelCenterX: NSLayoutConstraint!
    
    
}
class DetailViewModel{
    var bountyInfo: BountyInfo?
    
    func update(model: BountyInfo?){
        bountyInfo = model
    }
}
