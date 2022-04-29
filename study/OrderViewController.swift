//
//  OrderViewController.swift
//  study
//
//  Created by 김홍석 on 2022/04/22.
//

import UIKit

class OrderViewController: UIViewController {
    
    @IBOutlet weak var firstOrderView: UIView!
    @IBOutlet weak var orderButton: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureOrderView()
        self.configureOrderButton()
    }
    
    private func configureOrderView() {
        let borderColor = UIColor(red: 220/255, green: 220/255, blue: 220/255, alpha: 1.0)
        self.firstOrderView.layer.borderColor = borderColor.cgColor
        self.firstOrderView.layer.borderWidth = 0.5
        self.firstOrderView.layer.cornerRadius = 10.0
    }
    
    private func configureOrderButton() {
        let borderColor = UIColor(red: 220/255, green: 220/255, blue: 220/255, alpha: 1.0)
        self.orderButton.layer.borderColor = borderColor.cgColor
        self.orderButton.layer.borderWidth = 0.5
        self.orderButton.layer.cornerRadius = 5.0
    }
}
