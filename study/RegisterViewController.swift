//
//  RegisterViewController.swift
//  study
//
//  Created by 김홍석 on 2022/04/21.
//

import UIKit

class RegisterViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var realationButton: UIButton!
    @IBOutlet weak var contentsTextField: UITextView!
    @IBOutlet weak var button: UIButton!
    
    @IBOutlet weak var mournerTextField: UITextField!
    @IBOutlet weak var infoTextField: UITextField!
    
    @IBOutlet weak var firstDatePickView: UIView!
    @IBOutlet weak var firstDatePickInnerView: UIView!
    @IBOutlet weak var firstTimePickView: UIView!
    @IBOutlet weak var firstTimePickInnerView: UIView!
    
    @IBOutlet weak var secondDatePickView: UIView!
    @IBOutlet weak var secondDatePickInnerView: UIView!
    @IBOutlet weak var secondTimePickView: UIView!
    @IBOutlet weak var secondTimePickInnerView: UIView!
    
    @IBOutlet weak var thirdDatePickView: UIView!
    @IBOutlet weak var thirdDatePickInnerView: UIView!
    @IBOutlet weak var thirdTimePickView: UIView!
    @IBOutlet weak var thirdTimePickInnerView: UIView!
    
    let mournerList = ["1", "2", "3", "4", "5"]
    let infoList = ["1", "2", "3", "4"]
    
    // pickerView를 위한 picker변수 생성
    let picker1 = UIPickerView()
    let picker2 = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 각각의 설정이 구현될 수 있도록 viewDidLoad에 넣어준다.
        self.configureContentsTextView()
        self.configureButtonSetting()
        self.configurePickerView()
        self.configureDateTimePickViewSetting()
    }
    
    // 관계버튼의 형태 설정
    func configureButtonSetting() {
        self.button.layer.cornerRadius = 8.0
    }
    
    // 상주말씀이 표현되는 view를 설정
    func configureContentsTextView() {
        let borderColor = UIColor(red: 220/255, green: 220/255, blue: 220/255, alpha: 1.0)
        self.contentsTextField.layer.borderColor = borderColor.cgColor
        self.contentsTextField.layer.borderWidth = 0.5
        self.contentsTextField.layer.cornerRadius = 5.0
    }
    
    // pickerView생성
    func configurePickerView() {
        // 각각의 pickerView에 dataSource와 delegate를 연결한다.
        self.picker1.dataSource = self
        self.picker1.delegate = self
        
        self.picker2.dataSource = self
        self.picker2.delegate = self
        
        // toolBar를 위한 toolBar변수 생성
        let toolBar = UIToolbar()
        toolBar.sizeToFit() // 화면의 좌우 사이즈에 딱 맞도록 설정
        
        // toolBar에 추가될 각각의 버튼 생성
        // toolBar에 들어가는 버튼에 함수를 추가할 땐 selector를 사용한다.
        let btnDone = UIBarButtonItem(title: "확인", style: .done, target: self, action: #selector(onPickDone))
        let space = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
        let btnCancel = UIBarButtonItem(title: "취소", style: .done, target: self, action: #selector(onPickCancel))
        // toolBar에 각각의 버튼 추가
        toolBar.setItems([btnCancel, space, btnDone], animated: true)
        toolBar.isUserInteractionEnabled = true // 사용자가 상호작용할 수 있도록 설정
        
        // textField에 각각의 picker를 연결, toolBar를 넣어준다.
        self.mournerTextField.inputView = picker1
        self.mournerTextField.inputAccessoryView = toolBar
        
        self.infoTextField.inputView = picker2
        self.infoTextField.inputAccessoryView = toolBar
    }
    
    // 날짜를 설정하는 DatePickerView를 설정
    func configureDateTimePickViewSetting() {
        // 테두리 색상을 미리 변수로 만들어둔다.
        let borderColor = UIColor(red: 220/255, green: 220/255, blue: 220/255, alpha: 1.0)
        
        self.firstDatePickView.layer.borderColor = borderColor.cgColor
        self.firstDatePickView.layer.borderWidth = 0.5
        self.firstDatePickView.layer.cornerRadius = 10.0
        
        self.firstTimePickView.layer.borderColor = borderColor.cgColor
        self.firstTimePickView.layer.borderWidth = 0.5
        self.firstTimePickView.layer.cornerRadius = 10.0
        
        self.firstDatePickInnerView.layer.borderColor = borderColor.cgColor
        self.firstDatePickInnerView.layer.borderWidth = 0.5
        self.firstDatePickInnerView.layer.cornerRadius = 10.0
        self.firstDatePickInnerView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMinXMaxYCorner]
        self.firstDatePickInnerView.layer.masksToBounds = true
        
        self.firstTimePickInnerView.layer.borderColor = borderColor.cgColor
        self.firstTimePickInnerView.layer.borderWidth = 0.5
        self.firstTimePickInnerView.layer.cornerRadius = 10.0
        self.firstTimePickInnerView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMinXMaxYCorner]
        self.firstTimePickInnerView.layer.masksToBounds = true
        
        self.secondDatePickView.layer.borderColor = borderColor.cgColor
        self.secondDatePickView.layer.borderWidth = 0.5
        self.secondDatePickView.layer.cornerRadius = 10.0
        
        self.secondTimePickView.layer.borderColor = borderColor.cgColor
        self.secondTimePickView.layer.borderWidth = 0.5
        self.secondTimePickView.layer.cornerRadius = 10.0
        
        self.secondDatePickInnerView.layer.borderColor = borderColor.cgColor
        self.secondDatePickInnerView.layer.borderWidth = 0.5
        self.secondDatePickInnerView.layer.cornerRadius = 10.0
        self.secondDatePickInnerView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMinXMaxYCorner]
        self.secondDatePickInnerView.layer.masksToBounds = true
        
        self.secondTimePickInnerView.layer.borderColor = borderColor.cgColor
        self.secondTimePickInnerView.layer.borderWidth = 0.5
        self.secondTimePickInnerView.layer.cornerRadius = 10.0
        self.secondTimePickInnerView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMinXMaxYCorner]
        self.secondTimePickInnerView.layer.masksToBounds = true
        
        self.thirdDatePickView.layer.borderColor = borderColor.cgColor
        self.thirdDatePickView.layer.borderWidth = 0.5
        self.thirdDatePickView.layer.cornerRadius = 10.0
        
        self.thirdTimePickView.layer.borderColor = borderColor.cgColor
        self.thirdTimePickView.layer.borderWidth = 0.5
        self.thirdTimePickView.layer.cornerRadius = 10.0
        
        self.thirdDatePickInnerView.layer.borderColor = borderColor.cgColor
        self.thirdDatePickInnerView.layer.borderWidth = 0.5
        self.thirdDatePickInnerView.layer.cornerRadius = 10.0
        self.thirdDatePickInnerView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMinXMaxYCorner]
        self.thirdDatePickInnerView.layer.masksToBounds = true
        
        self.thirdTimePickInnerView.layer.borderColor = borderColor.cgColor
        self.thirdTimePickInnerView.layer.borderWidth = 0.5
        self.thirdTimePickInnerView.layer.cornerRadius = 10.0
        self.thirdTimePickInnerView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMinXMaxYCorner]
        self.thirdTimePickInnerView.layer.masksToBounds = true
    }
    
    // toolBar에 함수를 사용할 땐 @objc를 사용하여 함수를 생성한다.
    // toolBar에서 Done버튼이 눌렸을 때
    @objc func onPickDone() {
        self.mournerTextField.resignFirstResponder()
        self.infoTextField.resignFirstResponder()
    }
    
    @objc func onPickCancel() {
        self.mournerTextField.resignFirstResponder()
        self.mournerTextField.text = nil
        
        self.infoTextField.resignFirstResponder()
        self.infoTextField.text = nil
    }
    
    // 각각의 pickerView가 선택되었을 때 몇 개의 column이 표현될지 설정
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        if pickerView == self.picker1 {
            return 2
        } else {
            return 1
        }
    }
    
    // 몇 개의 row가 표현될지
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        // 각각의 List에 저장된 데이터의 개수에 따라 설정
        if pickerView == self.picker1 {
            return mournerList.count
        } else {
            return infoList.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == self.picker1 {
            return mournerList[row]
        } else {
            return infoList[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == self.picker1 {
            self.mournerTextField.text = mournerList[row]
        } else {
            self.infoTextField.text = infoList[row]
        }
    }
}
