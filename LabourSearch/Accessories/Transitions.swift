//
//  Transitions.swift
//  LabourSearch
//
//  Created by LIN LIU on 16/11/19.
//  Copyright © 2019 LinLiu. All rights reserved.
//


import UIKit

class Transitions:  CATransition {
    
    let transitionOptions: UIView.AnimationOptions = [.transitionFlipFromRight, .showHideTransitionViews]
    override init() {
        super.init();
    }
    
    func setTransitionProps(direction: CATransitionSubtype?){
        self.duration = 0.65
        self.timingFunction = CAMediaTimingFunction.init(name: CAMediaTimingFunctionName.default)
        self.type = CATransitionType.moveIn
        self.subtype = direction
        self.delegate = self as? CAAnimationDelegate
    }
    
    func setTransitionProps2(direction: CATransitionSubtype?){
        self.duration = 0.65
        self.timingFunction = CAMediaTimingFunction.init(name: CAMediaTimingFunctionName.default)
        self.type = CATransitionType.fade
        self.subtype = direction
        self.delegate = self as? CAAnimationDelegate
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
