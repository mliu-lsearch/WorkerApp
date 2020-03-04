//
//  View2.swift
//  LabourSearch
//
//  Created by LIN LIU on 4/12/19.
//  Copyright © 2019 LinLiu. All rights reserved.
//

import UIKit

class View2: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.setViewFrameSize()
        
        self.defineBackgroundColor()
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    func setViewFrameSize(){
        self.frame = CGRect(x: 0.0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
    }
    
    
    func defineBackgroundColor(){
        self.backgroundColor = .white
    }
    
}
