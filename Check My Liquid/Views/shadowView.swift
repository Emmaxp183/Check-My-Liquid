//
//  shadowView.swift
//  Check My Liquid
//
//  Created by macbook on 18/07/2022.
//

import UIKit

class shadowView: UIView {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.backgroundColor = UIColor.white.cgColor
        layer.cornerRadius = 15
     
        //shadow
        
        layer.shadowColor = UIColor(red: 0.403, green: 0.394, blue: 0.867, alpha: 0.3).cgColor
        layer.shadowRadius = 2
        layer.shadowOpacity = 1
        layer.shadowOffset = CGSize(width: 1, height: 4)
    }

}
