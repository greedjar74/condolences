//
//  OrderInfoViewController.swift
//  study
//
//  Created by 김홍석 on 2022/04/26.
//

import UIKit

class OrderInfoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let nameList = ["[근조] 3단화환 1호", "[근조] 3단화환 2호", "[근조] 3단화환 3호", "[근조] 4단화환 1호"]
    let priceList = ["77,000원", "88,000원", "99,000원", "145,000원"]
    let discountList = ["10%", "12%", "18%", "20%"]
    let originalList = ["85,000원", "100,000원", "120,000원", "180,000원"]
    
    let cellSapcingHeight: CGFloat = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "orderInfoCell", for: indexPath) as? orderCell else { return UITableViewCell() }
        
        let color = UIColor(red: 220/255, green: 220/255, blue: 220/255, alpha: 1.0)
        cell.orderButtonView.layer.borderColor = color.cgColor
        cell.orderButtonView.layer.borderWidth = 0.5
        cell.orderButtonView.layer.cornerRadius = 5.0
        
        let img = UIImage(named: "flower.jpg")
        cell.flowerImgView.image = img
        cell.nameLabel.text = nameList[indexPath.row]
        cell.priceLabel.text = priceList[indexPath.row]
        cell.discountPercentageLabel.text = discountList[indexPath.row]
        cell.originalPriceLabel.text = originalList[indexPath.row]
        
        cell.layer.borderColor = color.cgColor
        cell.layer.borderWidth = 0.5
        cell.layer.cornerRadius = 15.0
        cell.contentView.frame.inset(by: UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20))
        
        return cell
    }
}

class orderCell: UITableViewCell {
    @IBOutlet weak var flowerImgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var discountPercentageLabel: UILabel!
    @IBOutlet weak var originalPriceLabel: UILabel!
    @IBOutlet weak var orderButtonView: UIView!
}
