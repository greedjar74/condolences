//
//  DeliveryInfoViewController.swift
//  study
//
//  Created by 김홍석 on 2022/04/23.
//

import UIKit

class DeliveryInfoViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var Button: UIButton!
    @IBOutlet weak var selectionTextField: UITextField!
    @IBOutlet weak var contentsTextField: UITextField!
    
    let funeralhallList = ["1", "2", "3", "4", "5"]
    let contentsList = ["1", "2", "3", "4"]
    
    let picker1 = UIPickerView()
    let picker2 = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureButtonSetting()
        self.createPickerView()
    }
    
    func createPickerView() {
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
        
        self.selectionTextField.inputView = picker1
        self.selectionTextField.inputAccessoryView = toolBar
        
        self.contentsTextField.inputView = picker2
        self.contentsTextField.inputAccessoryView = toolBar
    }
    
    @objc func onPickDone() {
        self.selectionTextField.resignFirstResponder()
        self.contentsTextField.resignFirstResponder()
    }
    
    @objc func onPickCancel() {
        self.selectionTextField.resignFirstResponder()
        self.selectionTextField.text = nil
        
        self.contentsTextField.resignFirstResponder()
        self.contentsTextField.text = nil
    }
    
    func configureButtonSetting() {
        self.Button.layer.cornerRadius = 8.0
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == self.picker1 {
            return self.funeralhallList.count
        } else {
            return self.contentsList.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == self.picker1 {
            return self.funeralhallList[row]
        } else {
            return self.contentsList[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == self.picker1 {
            self.selectionTextField.text = self.funeralhallList[row]
        } else {
            self.contentsTextField.text = self.contentsList[row]
        }
    }
}
