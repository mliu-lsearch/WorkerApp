//
//  View3.swift
//  LabourSearch
//
//  Created by LIN LIU on 16/11/19.
//  Copyright © 2019 LinLiu. All rights reserved.
//
//
//

import UIKit

class View3: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.setViewFrameSize()
        
        self.defineBackgroundColor()
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    func setViewFrameSize(){
        self.frame = CGRect(x: 0.0, y: 0.0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
    }
    
    
    func defineBackgroundColor(){
        self.backgroundColor = UIColor(red: (250 / 255.0), green: (248 / 255.0), blue: (249 / 255.0), alpha: 1)
    }
    
    
    
    
}

