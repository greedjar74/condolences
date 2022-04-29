//
//  ListViewController.swift
//  study
//
//  Created by 김홍석 on 2022/04/27.
//

import UIKit

class ListViewController: UIViewController {

    @IBOutlet weak var seeAllButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.configureButtonSetting()
    }
    
    func configureButtonSetting() {
        let color = UIColor(red: 90/255, green: 30/255, blue: 10/255, alpha: 1.0)
        
        self.seeAllButton.layer.borderColor = color.cgColor
        self.seeAllButton.layer.borderWidth = 1.5
    }
}
