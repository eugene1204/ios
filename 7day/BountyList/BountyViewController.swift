//
//  BountyViewController.swift
//  BountyList
//
//  Created by yujin son on 2021/01/09.
//  Copyright © 2021 yujin son. All rights reserved.
//

import UIKit

class BountyViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    // MVVM
    
    // Model
    // - BountyInfo
    // > BountInfo 만들기
    
    // View
    // - ListCell
    // > ListCell 필요한 정보를 ViewModel한테서 받아야겠다
    // > ListCell은 ViewModel로 부터 받은 정보로 뷰 업데이트하기
    
    // ViewModel
    // - BountyVIewModel
    // > BountyViewModel을 만들고, 뷰레이어에서 필요한 메서드 만들기
    // > 모델 가지고 있기, BountyInfo들...
  
    // 모델임
//    let bountyInfoList: [BountyInfo] = [
//        BountyInfo(name: "brook", bounty: 33000000),
//        BountyInfo(name: "chopper", bounty: 50),
//        BountyInfo(name: "franky", bounty: 44000000),
//        BountyInfo(name: "luffy", bounty: 30000000),
//        BountyInfo(name: "nami", bounty: 16000000),
//        BountyInfo(name: "robin", bounty: 8000000),
//        BountyInfo(name: "sanji", bounty: 7700000),
//        BountyInfo(name: "zoro", bounty: 120000000)
//
//    ]
    let viewModel = BountyViewModel()
//    let nameList = ["brook", "chopper", "franky", "luffy", "nami", "robin","sanji", "zoro"]
//    let bountyList = [33000000, 50, 44000000,30000000, 1600000, 8000000, 7700000, 120000000]
    
    // 랭킹별로 정렬하기 - 코드 회고
    
   
    // segue사용하기전에 준비하는 함수
    // 데이터 넘겨주는 함수로 사용한다
    // sender을 통해서 받은 인덱스 정보를 DetailViewController에 전송
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // DetailViewController에게 데이터 준다
        if segue.identifier == "showDetail"{
            let vc = segue.destination as? DetailViewController
            if let index = sender as? Int{
                let bountyInfo = viewModel.bountyInfo (at: index)
               // let bountyInfo = bountyInfoList[index]
//                vc?.bountyInfo = bountyInfo
                vc?.viewModel.update(model: bountyInfo)
//                vc?.name = bountyInfo.name
//                vc?.bounty = bountyInfo.bounty
//                vc?.name = nameList[index]
//                vc?.bounty = bountyList[index]
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return bountyList.count
     //   return bountyInfoList.count
        return viewModel.numOfBountyInfoList
      }
      
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // guard는 cell이 있는 경우에는 return cell로
      guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ListCell else {return UITableViewCell()}
//        let img = UIImage(named: "\(nameList[indexPath.row]).jpg")
//                   cell.imageView?.image = img
//                   cell.nameLabel.text = nameList[indexPath.row]
//                   cell.bountyLabel.text = "\(bountyList[indexPath.row])"
                   
//        return cell
        
        //let bountyInfo = bountyInfoList[indexPath.row]
        let bountyInfo = viewModel.bountyInfo (at: indexPath.row)
        cell.update(info: bountyInfo)
//        cell.imgView.image = bountyInfo.image
//        cell.nameLabel.text = bountyInfo.name
//        cell.bountyLabel.text = "\(bountyInfo.bounty)"
        return cell
        
       // if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ListCell{
//            let img = UIImage(named: "\(nameList[indexPath.row]).jpg")
//            cell.imageView?.image = img
//            cell.nameLabel.text = nameList[indexPath.row]
//            cell.bountyLabel.text = "\(bountyList[indexPath.row])"
            
     //   } //else {return UITableViewCell()}
    }
    // UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("-->\(indexPath.row)")
        performSegue(withIdentifier: "showDetail", sender: indexPath.row)
        // 단일 섹션을 보내기때문에 몇번째 셀인지 같이 보낸다.
        // performSegue가 실행될때 sender을 이용해서 몇번째 셀인지 보낼수있음
        
    }
    
      // bountyViewController에서 셀이
}

//}
class ListCell: UITableViewCell {
     @IBOutlet weak var imgView: UIImageView!
     @IBOutlet weak var nameLabel: UILabel!
     @IBOutlet weak var bountyLabel: UILabel!
    
    func update(info: BountyInfo){
        imgView.image = info.image
        nameLabel.text = info.name
        bountyLabel.text = "\(info.bounty)"
    }
 }

// 뷰모델을 통해서만 엑세스 가능함
class BountyViewModel{
    let bountyInfoList: [BountyInfo] = [
        BountyInfo(name: "brook", bounty: 33000000),
        BountyInfo(name: "chopper", bounty: 50),
        BountyInfo(name: "franky", bounty: 44000000),
        BountyInfo(name: "luffy", bounty: 30000000),
        BountyInfo(name: "nami", bounty: 16000000),
        BountyInfo(name: "robin", bounty: 8000000),
        BountyInfo(name: "sanji", bounty: 7700000),
        BountyInfo(name: "zoro", bounty: 120000000)
    ]
    var sortedList: [BountyInfo] {
        let sortedList = bountyInfoList.sorted{ prev, next in return prev.bounty > next.bounty
           
        }
        return sortedList
        
    }
        
    var numOfBountyInfoList: Int {
        return bountyInfoList.count
    }
    
    func bountyInfo(at index: Int)-> BountyInfo{
        //return bountyInfoList[index]
        return sortedList[index]
    }
}
