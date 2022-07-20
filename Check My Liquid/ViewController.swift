//
//  ViewController.swift
//  Check My Liquid
//
//  Created by macbook on 17/07/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
//    @IBOutlet weak var waterLabel: UILabel!
//    @IBOutlet weak var sodaLabl: UILabel!
//    @IBOutlet weak var juiceLabel: UILabel!
//
//    var waterArray: [Int] = []
//    var sodeArray: [Int] = []
//    var juiceArray: [Int] = []
//
    let defaults = UserDefaults.standard
    let drinksArray:[[String: String]] = UserDefaults.standard.value(forKey: "MyDrinks") as? [[String: String]] ?? []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
    }

    @IBAction func addDrinksButtonTapped(_ sender: Any) {
   
    performSegue(withIdentifier: "drinks", sender: self)
    
    }
    
}

extension ViewController: UITableViewDataSource,UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return drinksArray.count
    }
    
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: drinksTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath as IndexPath) as! drinksTableViewCell
       
       
        let drink = drinksArray[indexPath.row]["drink"]
        let amount = drinksArray[indexPath.row]["amount"]
       
         cell.amount.text = amount
         cell.drinkName.text = drink
        
        if drink == "Water"{
            cell.drinkImage.image = UIImage(named: "water")
            
        }else if drink == "Juice"{
            
            cell.drinkImage.image = UIImage(named: "Juice")
            
        }else if drink == "Soda"{
            cell.drinkImage.image = UIImage(named: "Soda")
        }
        
        return cell
    
    }
    
    
    
    
    
    
}


//extension ViewController{
//    
//    func getDrinks(){
//       for drink in drinkArr
//        
//        
//    }
//    
//    
//    
//    
//}
