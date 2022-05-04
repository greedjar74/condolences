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
        
        return cell
    }
}

class OrderCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var destinataireLabel: UILabel!
    @IBOutlet weak var consignorLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
}
