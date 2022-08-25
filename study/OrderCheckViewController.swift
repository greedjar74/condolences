//
//  OrderCheckViewController.swift
//  study
//
//  Created by 김홍석 on 2022/05/04.
//

import UIKit

// tabbleView를 통해 주문한 정보를 나타내는 viewController 생성
class OrderCheckViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // 몇개의 cell이 표현될지 설정
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3 // 임의로 3개 설정
    }
    
    // cell에 대한 설정
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         // dequeueReusableCell을 통해 불필요한 낭비를 줄인다.
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "orderCell", for: indexPath) as? OrderCell else { return UITableViewCell() } // 해당하는 cell의 identifier를 orderCell으로 바꿔주고 class역시 따로 생성한 orderCell으로 설정한다.
        
        // cell의 형태 설정
        let color = UIColor(red: 220/255, green: 220/255, blue: 220/255, alpha: 1.0)
        
        cell.containerView.layer.borderColor = color.cgColor
        cell.containerView.layer.borderWidth = 0.5
        cell.containerView.layer.cornerRadius = 10.0
        cell.containerView.layer.shadowColor = UIColor.black.cgColor
        cell.containerView.layer.shadowOpacity = 0.15
        cell.containerView.layer.shadowRadius = 3.0
        cell.containerView.layer.shadowOffset = CGSize(width: 2, height: 2)
        
        return cell
    }
}

// orderCell class 생성
class OrderCell: UITableViewCell {
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var destinataireLabel: UILabel!
    @IBOutlet weak var consignorLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
}
