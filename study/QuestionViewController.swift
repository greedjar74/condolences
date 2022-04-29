//
//  QuestionViewController.swift
//  study
//
//  Created by 김홍석 on 2022/04/27.
//

import UIKit

class QuestionViewController: UIViewController {
    
    @IBOutlet weak var contentView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.configureContentViewSetting()
    }
    
    func configureContentViewSetting() {
        let color = UIColor(red: 220/255, green: 220/255, blue: 220/255, alpha: 1.0)
        
        self.contentView.layer.borderColor = color.cgColor
        self.contentView.layer.borderWidth = 1.0
        self.contentView.layer.cornerRadius = 10.0
    }
}
