//
//  Buttons.swift
//  LabourSearch
//
//  Created by LIN LIU on 16/11/19.
//  Copyright © 2019 LinLiu. All rights reserved.
//


import UIKit

class Buttons: UIButton {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    init(x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat,title: String, fontSize: CGFloat, cornerRadius: CGFloat, backgroundColor: UIColor, titleColor: UIColor, manager: UIView) {
        
        super.init(frame: CGRect(x: x, y: y, width: width, height: height))
        self.setTitle(title, for: .normal)
        self.layer.cornerRadius = cornerRadius
        self.clipsToBounds = true
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: fontSize)
        self.backgroundColor = backgroundColor
        self.setTitleColor(titleColor, for: .normal)
        self.addTarget(self, action: #selector(onClickButtonsAnimation), for: .touchUpInside)
        manager.addSubview(self)
        
        //M: some temporary settings
        self.adjustsImageWhenHighlighted = false
    }
    
    
    @objc func onClickButtonsAnimation(sender: UIButton){
        sender.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
        UIView.animate(withDuration: 0.5,
                       delay: 0,
                       usingSpringWithDamping: CGFloat(0.20),
                       initialSpringVelocity: CGFloat(6.0),
                       options: UIView.AnimationOptions.allowUserInteraction,
                       animations: {sender.transform = CGAffineTransform.identity},
                       completion: { Void in()  })
        sender.showsTouchWhenHighlighted = true
    }
    
}
