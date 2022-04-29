//
//  LicenseInfoViewController.swift
//  study
//
//  Created by 김홍석 on 2022/04/25.
//

import UIKit

class LicenseInfoViewController: UIViewController {
    @IBOutlet weak var uiview: UIView!
    
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var thirdLabel: UILabel!
    @IBOutlet weak var fourthLabel: UILabel!
    @IBOutlet weak var fifthLabel: UILabel!
    @IBOutlet weak var sixthLabel: UILabel!
    @IBOutlet weak var seventhLabel: UILabel!
    @IBOutlet weak var eighthLabel: UILabel!
    @IBOutlet weak var ninethLabel: UILabel!
    @IBOutlet weak var tenthLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureViewSetting()
        self.backgroundColorSetting()
    }
    
    func configureViewSetting() {
        let color = UIColor(red: 200/255, green: 200/255, blue: 200/255, alpha: 0.5)
        
        self.uiview.layer.borderColor = color.cgColor
        self.uiview.layer.borderWidth = 1.0
        self.uiview.layer.cornerRadius = 10.0
    }
    
    func backgroundColorSetting() {
        let color = UIColor(red: 227/255, green: 227/255, blue: 255/255, alpha: 0.2)
        
        self.secondLabel.backgroundColor = color
        self.fourthLabel.backgroundColor = color
        self.sixthLabel.backgroundColor = color
        self.eighthLabel.backgroundColor = color
        self.tenthLabel.backgroundColor = color
    }
}
