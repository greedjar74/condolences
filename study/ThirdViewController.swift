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
        
        cell.layer.borderColor = color.cgColor
        cell.layer.borderWidth = 0.5
        cell.layer.cornerRadius = 10.0
        cell.orderView.layer.borderColor = color.cgColor
        cell.orderView.layer.borderWidth = 0.5
        cell.orderView.layer.cornerRadius = 5.0
        cell.priceLabel.text = priceList[indexPath.row]
        cell.nameLabel.text = nameList[indexPath.row]
        
        return cell
    }
}

class ThirdCell: UITableViewCell {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var orderView: UIView!
}
