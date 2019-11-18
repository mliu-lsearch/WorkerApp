//
//  CollectionViews.swift
//  LabourSearch
//
//  Created by LIN LIU on 16/11/19.
//  Copyright © 2019 LinLiu. All rights reserved.
//



import UIKit

class CollectionViews: UICollectionView {
    
    
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    init(layout:UICollectionViewLayout, x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat, manager: UIView){
        super.init(frame:  .zero, collectionViewLayout: layout)
        
        self.backgroundColor = .white
        self.frame = CGRect(x:x, y:y, width: width, height:height)
        manager.addSubview(self)
    }
    
    
    
    
}
