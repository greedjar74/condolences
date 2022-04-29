//
//  SearchViewController.swift
//  study
//
//  Created by 김홍석 on 2022/04/22.
//

import UIKit

class SearchViewController: UIViewController {
    @IBOutlet weak var searchTextfieldView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configuresearchTextfieldView()
    }
    
    private func configuresearchTextfieldView() {
        let borderColor = UIColor(red: 100/255, green: 100/255, blue: 100/255, alpha: 1.0)
        
        self.searchTextfieldView.layer.borderColor = borderColor.cgColor
        self.searchTextfieldView.layer.borderWidth = 0.5
        self.searchTextfieldView.layer.cornerRadius = 15.0
    }
}
