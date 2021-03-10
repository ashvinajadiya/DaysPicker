//
//  PickerViewController.swift
//  DaysPicker
//
//  Created by Ashvin Ajadiya on 10/03/21.
//

import UIKit

class PickerViewController: UIViewController {

    //Outlets
    @IBOutlet var pickerContainerView: UIView!
    @IBOutlet var pickerView: UIPickerView!
    @IBOutlet var selectedDaysLabel: UILabel!
    
    // Local variables
    var pickerModel: PickerModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Setup model
        pickerModel = PickerModel(animationDuration: 0.3, range: 7, elements: nil, selectedDays: 0)
    }
    
    //MARK: - Button Actions
    @IBAction func openPicker(_ sender: Any) {
        pickerContainerView.animShow(duration: pickerModel.animationDuration)
    }
    
    @IBAction func doneButton(_ sender: Any) {
        pickerContainerView.animHide(duration: pickerModel.animationDuration)
    }
}

//MARK: - UIPickerViewDataSource
extension PickerViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        pickerModel.numberOfComponent
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        pickerModel.numbersOfDays()
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let label = UILabel()
        label.textAlignment = .center
        label.text = String(pickerModel.elements[row])
        return label
    }
}

//MARK: - UIPickerViewDelegate
extension PickerViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        pickerModel.selectedDays = pickerModel.elements[row]
        
        selectedDaysLabel.text = String(pickerModel.selectedDays)
    }
}
