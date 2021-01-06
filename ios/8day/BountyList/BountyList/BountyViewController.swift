//
//  BountyViewController.swift
//  BountyList
//
//  Created by yujin son on 2020/08/05.
//  Copyright © 2020 yujin son. All rights reserved.
//

import UIKit

class BountyViewController: UIViewController ,UITableViewDataSource, UITableViewDelegate{
   
    let nameList = ["brook", "chopper", "franky", "nami", "robin", "sanji", "zoro"]
    let bountyList = [33000000, 50, 44000000, 30000000, 16000000, 77000000, 12000000]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           //return 5
        return bountyList.count
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        /*
     guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ListCell else {
                    return UITableViewCell()
                }
                
                let img = UIImage(named: "\(nameList[indexPath.row]).jpg")
                cell.imgView.image = img
                cell.nameLabel.text = nameList[indexPath.row]
                cell.bountyLabel.text = "\(bountyList[indexPath.row])"
                return cell
          */
                if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ListCell {
                    let img = UIImage(named: "\(nameList[indexPath.row]).jpg")
                    cell.imgView.image = img
                    cell.nameLabel.text = nameList[indexPath.row]
                    cell.bountyLabel.text = "\(bountyList[indexPath.row])"
                    return cell
                } else {
                    return UITableViewCell()
                }
        
       }
    
    // UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("--> \(indexPath.row)")
    }

}

class ListCell: UITableViewCell {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bountyLabel: UILabel!
    
}
