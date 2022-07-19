//
//  addDrinksViewController.swift
//  Check My Liquid
//
//  Created by macbook on 19/07/2022.
//

import UIKit

class addDrinksViewController: UIViewController {

    @IBOutlet weak var pickerView: UIPickerView!
    
    var pickerData = [["Soda","Water","Juice"], ["250 ml","500 ml","100 ml"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
             
        pickerView.delegate = self
        pickerView.dataSource = self
       
    }
    


}


extension addDrinksViewController: UIPickerViewDelegate,UIPickerViewDataSource{
     
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return pickerData.count
    }
    
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[component][row]
    }
    
}
