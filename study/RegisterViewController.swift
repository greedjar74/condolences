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
    
    let mournerList = ["1", "2", "3", "4", "5"]
    let infoList = ["1", "2", "3", "4"]
    
    let picker1 = UIPickerView()
    let picker2 = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.configureContentsTextView()
        self.configureButtonSetting()
        self.configurePickerView()
    }
    
    func configureButtonSetting() {
        self.button.layer.cornerRadius = 8.0
    }
    
    func configureContentsTextView() {
        let borderColor = UIColor(red: 220/255, green: 220/255, blue: 220/255, alpha: 1.0)
        self.contentsTextField.layer.borderColor = borderColor.cgColor
        self.contentsTextField.layer.borderWidth = 0.5
        self.contentsTextField.layer.cornerRadius = 5.0
    }
    
    func configurePickerView() {
        self.picker1.dataSource = self
        self.picker1.delegate = self
        
        self.picker2.dataSource = self
        self.picker2.delegate = self
        
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let btnDone = UIBarButtonItem(title: "확인", style: .done, target: self, action: #selector(onPickDone))
        let space = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
        let btnCancel = UIBarButtonItem(title: "취소", style: .done, target: self, action: #selector(onPickCancel))
        toolBar.setItems([btnCancel, space, btnDone], animated: true)
        toolBar.isUserInteractionEnabled = true
        
        self.mournerTextField.inputView = picker1
        self.mournerTextField.inputAccessoryView = toolBar
        
        self.infoTextField.inputView = picker2
        self.infoTextField.inputAccessoryView = toolBar
    }
    
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
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
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
