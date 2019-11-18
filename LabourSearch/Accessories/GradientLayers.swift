//
//  GradientLayers.swift
//  LabourSearch
//
//  Created by LIN LIU on 16/11/19.
//  Copyright © 2019 LinLiu. All rights reserved.
//

import UIKit

class GradientLayers: CAGradientLayer {
    
    override init() {
        super.init();
    }
    
    func setLayerProps(parent: CGRect, leftColor: CGColor, rightColor: CGColor, leftLocation: NSNumber, rightLocation: NSNumber, leftStartPoint: Int, rightStartPoint: Int,leftEndPoint: Int, rightEndPoint: Int) {
        
        self.frame = parent
        self.colors = [leftColor, rightColor]
        self.locations = [leftLocation, rightLocation]
        self.startPoint = CGPoint(x: leftStartPoint, y: rightStartPoint)
        self.endPoint = CGPoint(x: leftEndPoint, y: rightEndPoint)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

