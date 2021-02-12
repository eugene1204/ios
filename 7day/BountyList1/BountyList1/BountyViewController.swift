//
//  BountyViewController.swift
//  BountyList1
//
//  Created by yujin son on 2021/01/10.
//  Copyright © 2021 yujin son. All rights reserved.
//

import UIKit

class BountyViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let nameList = ["brook", "chopper", "franky", "luffy", "nami", "robin","sanji", "zoro"]
    let bountyList = [33000000, 50, 44000000,30000000, 1600000, 8000000, 7700000, 120000000]
    
    //performSegue가 수행되기 전에 실행하는 메소드
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       // DetailViewController에 데이터를 준다.
        // 어떤 segue?
        if segue.identifier == "showDetail"{
            // vc에 DetailViewController 넣어줌
            let vc = segue.destination as? DetailViewController
            if let index = sender as? Int{
                vc?.name = nameList[index]
                vc?.bounty = bountyList[index]
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
//    UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bountyList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // cell은 UITableCell이다. cell을 ListCell로 변환해주기
        // guard문은 cell이 nil 일경우 return UITableViewCell
        // 아니면 return cell 실행
       guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ListCell else {return UITableViewCell()}
        // 이미지 가져와서 변수에 저장
        let img = UIImage(named: "\(nameList[indexPath.row])")
        // 이미지, 레이블에 값넣어주기
        cell.imgView.image = img
        cell.nameLabel.text = nameList[indexPath.row]
        cell.bountyLabel.text = "\(bountyList[indexPath.row])"
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
    
}
