//
//  SearchViewController.swift
//  study
//
//  Created by 김홍석 on 2022/04/22.
//

import UIKit

class SearchViewController: UIViewController {
    // 검색어 입력 textFireld 생성
    @IBOutlet weak var searchTextfieldView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // textField 설정 함수 사용
        self.configuresearchTextfieldView()
    }
    
    // textField설정 함수 생성
    private func configuresearchTextfieldView() {
        let borderColor = UIColor(red: 100/255, green: 100/255, blue: 100/255, alpha: 1.0)
        
        self.searchTextfieldView.layer.borderColor = borderColor.cgColor
        self.searchTextfieldView.layer.borderWidth = 0.5
        self.searchTextfieldView.layer.cornerRadius = 15.0
    }
}
