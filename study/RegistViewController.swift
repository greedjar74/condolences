//
//  RegistViewController.swift
//  study
//
//  Created by 김홍석 on 2022/04/27.
//

import UIKit

class RegistViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var selectionTExtField: UITextField!
    @IBOutlet weak var registButton: UIButton!
    @IBOutlet weak var nameTextField: UITextField!
    
    let selectList = ["1", "2", "3", "4", "5"]
    
    let picker = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.configureRegistButtonSetting()
        self.configurePickerView()
    }
    
    func configureRegistButtonSetting() {
        self.registButton.layer.cornerRadius = 5.0
    }
    
    func configurePickerView() {
        self.picker.dataSource = self
        self.picker.delegate = self
        
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let btnDone = UIBarButtonItem(title: "확인", style: .done, target: self, action: #selector(onPickDone))
        let space = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
        let btnCancel = UIBarButtonItem(title: "취소", style: .done, target: self, action: #selector(onPickCancel))
        toolBar.setItems([btnCancel, space, btnDone], animated: true)
        toolBar.isUserInteractionEnabled = true
        
        self.selectionTExtField.inputView = picker
        self.selectionTExtField.inputAccessoryView = toolBar
    }
    
    @objc func onPickDone() {
        self.selectionTExtField.resignFirstResponder()
    }
    
    @objc func onPickCancel() {
        self.selectionTExtField.resignFirstResponder()
        self.selectionTExtField.text = nil
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return selectList.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return selectList[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.selectionTExtField.text = selectList[row]
    }
}
