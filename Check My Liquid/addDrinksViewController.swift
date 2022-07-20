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
    
//

    
    @IBAction func drinksButtonTapped(_ sender: Any) {
        let defaults = UserDefaults.standard
        let selectedDrink = pickerView.selectedRow(inComponent: 0)
        let selectedAmount = pickerView.selectedRow(inComponent: 1)
        let savedDrink = pickerData[0][selectedDrink]
        let savedAmount = pickerData[1][selectedAmount]
        let dict = ["drink": savedDrink, "amount": savedAmount]
        
        var drinksArray : [[String:String]] = defaults.value(forKey: "MyDrinks") as? [[String:String]] ?? []
        
        drinksArray.append(dict)
        defaults.set(drinksArray, forKey: "MyDrinks")
        print(drinksArray)
        dismiss(animated: true,completion: nil)
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
