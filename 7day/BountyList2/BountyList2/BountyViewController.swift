//
//  BountyViewController.swift
//  BountyList1
//
//  Created by yujin son on 2021/01/10.
//  Copyright © 2021 yujin son. All rights reserved.
//

import UIKit

class BountyViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
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
    
//    UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return bountyList.count
        return viewModel.numOfBountyInfoList
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // cell은 UITableCell이다. cell을 ListCell로 변환해주기
        // guard문은 cell이 nil 일경우 return UITableViewCell
        // 아니면 return cell 실행
       guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ListCell else {return UITableViewCell()}
        let bountyInfo = viewModel.bountyInfo(at: indexPath.row)
        
        cell.update(info: bountyInfo)
        return cell
    }
    
// UITableDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // 몇번째인덱스가 클릭되었는지 프린트
        print("--> \(indexPath.row)")
        // 눌렀을때 segue 실행하기
        performSegue(withIdentifier: "showDetail", sender: indexPath.row) // sender을 이용해서 indext.row보내기
        // index.row는 셀에 대한 데이터를 의미한다.
    }
    
}

class ListCell: UITableViewCell{
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
