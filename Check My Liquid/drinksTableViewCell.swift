//
//  drinksTableViewCell.swift
//  Check My Liquid
//
//  Created by macbook on 18/07/2022.
//

import UIKit

class drinksTableViewCell: UITableViewCell {

    @IBOutlet weak var cellBackground: UIView!
    @IBOutlet weak var drinkImage: UIImageView!
    @IBOutlet weak var drinkName: UILabel!
    @IBOutlet weak var amount: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        cellBackground.layer.backgroundColor = UIColor.white.cgColor
        cellBackground.layer.cornerRadius = 10
     
        //shadow
        
        cellBackground.layer.shadowColor = UIColor(red: 0.403, green: 0.394, blue: 0.867, alpha: 0.3).cgColor
        cellBackground.layer.shadowRadius = 1
        cellBackground.layer.shadowOpacity = 1
        cellBackground.layer.shadowOffset = CGSize(width: 1, height: 5)
    }

   

}
