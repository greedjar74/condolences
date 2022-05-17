//
//  ThirdViewController.swift
//  study
//
//  Created by 김홍석 on 2022/05/09.
//

import UIKit

class ThirdViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let nameList = ["1줄 리본 교체", "2줄 리본 교체"]
    let priceList = ["15,000원", "25,000원"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ThirdCell") as? ThirdCell else { return UITableViewCell() }
        
        let color = UIColor(red: 200/255, green: 200/255, blue: 200/255, alpha: 1.0)
        
        cell.priceLabel.text = priceList[indexPath.row]
        cell.nameLabel.text = nameList[indexPath.row]
        
        // 전체 view 설정
        cell.containerView.layer.borderColor = color.cgColor
        cell.containerView.layer.borderWidth = 0.5
        cell.containerView.layer.cornerRadius = 10.0
        cell.containerView.layer.shadowOpacity = 0.15
        cell.containerView.layer.shadowRadius = 3.0
        cell.containerView.layer.shadowColor = UIColor.black.cgColor
        cell.containerView.layer.shadowOffset = CGSize(width: 2, height: 2)
        
        // order button 설정
        cell.orderView.layer.borderColor = color.cgColor
        cell.orderView.layer.borderWidth = 0.5
        cell.orderView.layer.cornerRadius = 5.0
        cell.orderView.layer.shadowOpacity = 0.15
        cell.orderView.layer.shadowRadius = 3.0
        cell.orderView.layer.shadowColor = UIColor.black.cgColor
        cell.orderView.layer.shadowOffset = CGSize(width: 2, height: 2)
        
        return cell
    }
}

class ThirdCell: UITableViewCell {
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var orderView: UIView!
}
