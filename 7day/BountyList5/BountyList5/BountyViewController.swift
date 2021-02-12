//
//  BountyViewController.swift
//  BountyList5
//
//  Created by yujin son on 2021/02/12.
//  Copyright © 2021 yujin son. All rights reserved.
//

import UIKit


class BountyViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    let viewModel = BountyViewModel()
    //performSegue가 수행되기 전에 실행하는 메소드
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       // DetailViewController에 데이터를 준다.
        // 어떤 segue?
        if segue.identifier == "showDetail"{
            // vc에 DetailViewController 넣어줌
            let vc = segue.destination as? DetailViewController
            if let index = sender as? Int{
                // BountyViewController의 viewModel
                let bountyInfo = viewModel.bountyInfo(at: index)
                // DetailViewController의 viewmodel에 bountyInfo를 넣어줌
                vc?.viewModel.update(model: bountyInfo)

                
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // UICollectionViewDataSource,
       // 몇개를 보여줄까요?
       func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
              return viewModel.numOfBountyInfoList
          }
      
       // 셀은 어떻게 표현할까요?
       func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
           guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GridCell", for: indexPath) as?
               GridCell else{
                   return UICollectionViewCell()
           }
           
           let info = viewModel.bountyInfo(at: indexPath.item)
           cell.update(info: info)
       
           return cell
       }
       
       // UICollectionViewDelegate,
       // 셀이 클릭되었을때 어쩔까요?
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       // 눌렀을때 segue 실행하기
           performSegue(withIdentifier: "showDetail", sender: indexPath.item) // sender을 이용해서 indext.row보내기
      
       }
    //UICollectionViewDelegateFlowLayout
    // 셀사이즈를 계산(다양한 디바이스에서 일관적인 디자인을 보여주기위해)
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let itemSpacing: CGFloat = 10
        let textAreaHeight: CGFloat = 65
               
        let width: CGFloat = (collectionView.bounds.width - itemSpacing)/2
        let height: CGFloat = width * 10/7 + textAreaHeight
        return CGSize(width: width, height: height)
    }
}

class GridCell: UICollectionViewCell{
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bountyLabel: UILabel!
    // 이미지, 레이블에 값넣어주기
    func update(info: BountyInfo){
        imgView.image = info.image
        nameLabel.text = info.name
        bountyLabel.text = "\(info.bounty)"
    }
}

struct BountyInfo {
    let name: String
    let bounty: Int
    
    var image: UIImage? {
        return UIImage(named: "\(name).jpg")
    }
    init(name:String, bounty: Int) {
        self.name = name
        self.bounty = bounty
    }
}





class BountyViewModel{
    let bountyInfoList:[BountyInfo]=[
        BountyInfo(name: "brook", bounty: 33000000),
        BountyInfo(name: "chopper", bounty: 50),
        BountyInfo(name: "franky", bounty: 44000000),
        BountyInfo(name: "luffy", bounty: 30000000),
        BountyInfo(name: "nami", bounty: 1600000),
        BountyInfo(name: "robin", bounty: 8000000),
        BountyInfo(name: "sanji", bounty: 7700000),
        BountyInfo(name: "zoro", bounty: 120000000)
    ]
    
    // bountyInfoList 개수
    var numOfBountyInfoList: Int{
        return bountyInfoList.count
    }
    
    func bountyInfo(at index: Int) ->BountyInfo {
        return bountyInfoList[index]
    }
}

