//
//  TextViews.swift
//  LabourSearch
//
//  Created by LIN LIU on 16/11/19.
//  Copyright © 2019 LinLiu. All rights reserved.
//


import UIKit
class TextViews: UITextView {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    init(x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat, cornerRadius: CGFloat, backgroundColor: UIColor, textAlignment: NSTextAlignment , textColor: UIColor, font: UIFont, text: String, manager: UIView) {
        super.init(frame: CGRect.zero, textContainer: nil)
        self.frame = CGRect(x: x, y: y, width: width, height: height)
        
        self.layer.cornerRadius = cornerRadius
        self.clipsToBounds = true
        self.backgroundColor = backgroundColor
        self.textAlignment = textAlignment
        self.textColor = textColor
        self.font = font
        self.text = text
        manager.addSubview(self)
    }
}
