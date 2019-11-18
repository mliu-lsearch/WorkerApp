//
//  ImageViews.swift
//  LabourSearch
//
//  Created by LIN LIU on 16/11/19.
//  Copyright © 2019 LinLiu. All rights reserved.
//



import UIKit

class ImageViews: UIImageView {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    init( x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat, manager: UIView){
        super.init(frame: CGRect(x: x, y: y, width: width, height: height))
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 5
        self.backgroundColor = .black
        manager.addSubview(self)
    }
    
    
}
