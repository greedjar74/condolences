//
//  LicenseInfoViewController.swift
//  study
//
//  Created by 김홍석 on 2022/04/25.
//

import UIKit

class LicenseInfoViewController: UIViewController {
    
    @IBOutlet weak var uiView: UIView!
    
    @IBOutlet weak var firstTitleView: UIView!
    @IBOutlet weak var firstContentsView: UIView!
    @IBOutlet weak var secondTitleView: UIView!
    @IBOutlet weak var secondContentsView: UIView!
    @IBOutlet weak var thirdTitleView: UIView!
    @IBOutlet weak var thirdContentsView: UIView!
    @IBOutlet weak var fourthTitleView: UIView!
    @IBOutlet weak var fourthContentsView: UIView!
    @IBOutlet weak var fifthTitleView: UIView!
    @IBOutlet weak var fifthContentsView: UIView!
    @IBOutlet weak var sixthTitleView: UIView!
    @IBOutlet weak var seventhTitleLabel: UIView!
    @IBOutlet weak var eighthTitleView: UIView!
    @IBOutlet weak var eighthContentsView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.configureViewSetting()
        self.configureContentsViewSetting()
    }
    
    func configureViewSetting() {
        let color = UIColor(red: 200/255, green: 200/255, blue: 200/255, alpha: 1.0)
        
        self.uiView.layer.borderColor = color.cgColor
        self.uiView.layer.borderWidth = 0.5
        self.uiView.layer.cornerRadius = 10.0
    }
    
    func configureContentsViewSetting() {
        let color = UIColor(red: 248/255, green: 247/255, blue: 252/255, alpha: 0.7)
        
        self.firstContentsView.backgroundColor = color
        self.secondContentsView.backgroundColor = color
        self.thirdContentsView.backgroundColor = color
        self.fourthContentsView.backgroundColor = color
        self.fifthContentsView.backgroundColor = color
        self.eighthContentsView.backgroundColor = color
        
        self.eighthContentsView.layer.cornerRadius = 10.0
        self.eighthContentsView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        self.eighthContentsView.layer.masksToBounds = true
    }
}
