//
//  BasketOrderInfoViewController.swift
//  study
//
//  Created by 김홍석 on 2022/04/26.
//

import UIKit

class BasketOrderInfoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var nameList = ["영정바구니", "오브제, 장구 1단", "오브제2단, 장구 2단"]
    var priceList = ["65,000원", "85,000원", "105,000원"]
    var pecentList = ["15%", "15%", "20%"]
    var originalList = ["75,000원", "100,000원", "130,000원"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "basketOrderCell", for: indexPath) as? basketOrderCell else { return UITableViewCell() }
        
        let color = UIColor(red: 220/255, green: 220/255, blue: 220/255, alpha: 1.0)
        cell.orderView.layer.borderColor = color.cgColor
        cell.orderView.layer.borderWidth = 0.5
        cell.orderView.layer.cornerRadius = 5.0
        
        let img = UIImage(named: "flower.jpg")
        cell.imgView.image = img
        cell.nameLabel.text = nameList[indexPath.row]
        cell.priceLabel.text = priceList[indexPath.row]
        cell.percentLabel.text = pecentList[indexPath.row]
        cell.originalLabel.text = originalList[indexPath.row]
        
        cell.layer.borderColor = color.cgColor
        cell.layer.borderWidth = 0.5
        cell.layer.cornerRadius = 15.0
        
        return cell
    }

}

class basketOrderCell: UITableViewCell {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var percentLabel: UILabel!
    @IBOutlet weak var originalLabel: UILabel!
    @IBOutlet weak var orderView: UIView!
}
