//
//  SecondViewController.swift
//  study
//
//  Created by 김홍석 on 2022/05/09.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let nameList = ["영정바구니", "오브제, 장구 1단", "오브제 2단, 장구 2단"]
    let priceList = ["65,000원", "85,000원", "105,000원"]
    let percentList = ["15%", "15%", "20%"]
    let originList = ["75,000원", "100,000원", "130,000원"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SecondCell", for: indexPath) as? SecondCell else { return UITableViewCell() }
        
        let color = UIColor(red: 200/255, green: 200/255, blue: 200/255, alpha: 1.0)
        
        cell.layer.borderColor = color.cgColor
        cell.layer.borderWidth = 0.5
        cell.layer.cornerRadius = 10.0
        cell.orderView.layer.borderColor = color.cgColor
        cell.orderView.layer.borderWidth = 0.5
        cell.orderView.layer.cornerRadius = 5.0
        cell.nameLabel.text = nameList[indexPath.row]
        cell.priceLabel.text = priceList[indexPath.row]
        cell.percentLabel.text = percentList[indexPath.row]
        cell.originLabel.text = originList[indexPath.row]
        
        return cell
    }
    
}

class SecondCell: UITableViewCell {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var percentLabel: UILabel!
    @IBOutlet weak var originLabel: UILabel!
    @IBOutlet weak var orderView: UIView!
}
