//
//  CondolencesReceivedViewController.swift
//  study
//
//  Created by 김홍석 on 2022/04/29.
//

import UIKit

class CondolencesReceivedViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var mournerTextField: UITextField!
    @IBOutlet weak var deceasedTextField: UITextField!
    
    let mournerList = ["1", "2", "3", "4", "5"]
    let deceasedList = ["1", "2", "3", "4"]
    
    let picker1 = UIPickerView()
    let picker2 = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.configurePickerView()
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
        
        self.deceasedTextField.inputView = picker2
        self.deceasedTextField.inputAccessoryView = toolBar
    }
    
    @objc func onPickDone() {
        self.mournerTextField.resignFirstResponder()
        self.deceasedTextField.resignFirstResponder()
    }
    
    @objc func onPickCancel() {
        self.mournerTextField.resignFirstResponder()
        self.mournerTextField.text = nil
        
        self.deceasedTextField.resignFirstResponder()
        self.deceasedTextField.text = nil
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == self.picker1 {
            return mournerList.count
        } else {
            return deceasedList.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == self.picker1 {
            return mournerList[row]
        } else {
            return deceasedList[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == self.picker1 {
            self.mournerTextField.text = mournerList[row]
        } else {
            self.deceasedTextField.text = deceasedList[row]
        }
    }
}
