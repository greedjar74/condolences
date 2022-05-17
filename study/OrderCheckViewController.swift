//
//  OrderCheckViewController.swift
//  study
//
//  Created by 김홍석 on 2022/05/04.
//

import UIKit

class OrderCheckViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "orderCell", for: indexPath) as? OrderCell else { return UITableViewCell() }
        
        let color = UIColor(red: 220/255, green: 220/255, blue: 220/255, alpha: 1.0)
        
        cell.containerView.layer.borderColor = color.cgColor
        cell.containerView.layer.borderWidth = 0.5
        cell.containerView.layer.cornerRadius = 5.0
        cell.containerView.layer.shadowColor = UIColor.black.cgColor
        cell.containerView.layer.shadowOpacity = 0.15
        cell.containerView.layer.shadowRadius = 1.0
        cell.containerView.layer.shadowOffset = CGSize(width: 2, height: 2)
        
        return cell
    }
}

class OrderCell: UITableViewCell {
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var destinataireLabel: UILabel!
    @IBOutlet weak var consignorLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
}
