//
//  RibbonOrderViewController.swift
//  study
//
//  Created by 김홍석 on 2022/04/26.
//

import UIKit

class RibbonOrderViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    let nameList = ["1줄 리본 교체", "2줄 리본 교체"]
    let priceList = ["15,000원", "25,000원"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ribbonOrderCell else { return UITableViewCell() }
        
        let color = UIColor(red: 220/255, green: 220/255, blue: 220/255, alpha: 1.0)
        cell.orderView.layer.borderColor = color.cgColor
        cell.orderView.layer.borderWidth = 0.5
        cell.orderView.layer.cornerRadius = 5.0
        
        let img = UIImage(named: "flower.jpg")
        cell.imgView.image = img
        cell.imgView.alpha = 0.5
        cell.nameLabel.text = nameList[indexPath.row]
        cell.priceLabel.text = priceList[indexPath.row]
        
        cell.layer.borderColor = color.cgColor
        cell.layer.borderWidth = 0.5
        cell.layer.cornerRadius = 15.0
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

class ribbonOrderCell: UITableViewCell {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var orderView: UIView!
}
