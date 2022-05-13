//
//  FirstViewController.swift
//  study
//
//  Created by 김홍석 on 2022/05/08.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let nameList = ["[근조] 3단화환 1호", "[근조] 3단화환 2호", "[근조] 3단화환 3호", "[근조] 4단화환 1호"]
    let priceList = ["77,000원", "88,000원", "99,000원", "145,000원"]
    let percentList = ["10%", "12%", "18%", "20%"]
    let originList = ["85,000원", "100,000원", "120,000원", "180,000원"]
    let isCellBest = [true, false, true, true]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FirstCell", for: indexPath) as? FirstCell else { return UITableViewCell() }
        
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
        cell.bestLabel.isHidden = isCellBest[indexPath.row]
        cell.starImgView.isHidden = isCellBest[indexPath.row]
        
        return cell
    }
}

class FirstCell: UITableViewCell {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var percentLabel: UILabel!
    @IBOutlet weak var originLabel: UILabel!
    @IBOutlet weak var orderView: UIView!
    @IBOutlet weak var starImgView: UIImageView!
    @IBOutlet weak var bestLabel: UILabel!
}
