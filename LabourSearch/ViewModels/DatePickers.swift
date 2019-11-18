//
//  DatePickers.swift
//  LabourSearch
//
//  Created by LIN LIU on 16/11/19.
//  Copyright © 2019 LinLiu. All rights reserved.
//


import UIKit

class DatePickers: UIDatePicker {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    init(x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat, cornerRadius: CGFloat, backgroundColor: UIColor, tintColor: UIColor, manager: UIView) {
        
        super.init(frame: CGRect(x: x, y: y, width: width, height: height))
        
        self.layer.cornerRadius = cornerRadius
        self.clipsToBounds = true
        self.backgroundColor = backgroundColor
//        self.textAlignment = textAlignment
  
        self.tintColor = tintColor
//        self.adjustsFontSizeToFitWidth = fitWidth
//        self.font = font
//        self.text = text
        self.datePickerMode = .dateAndTime
            //.datePicker?.datePickerMode = UIDatePickerMode.dateAndTime
        manager.addSubview(self)
        
       
        
        
    }
    
    
    
}
