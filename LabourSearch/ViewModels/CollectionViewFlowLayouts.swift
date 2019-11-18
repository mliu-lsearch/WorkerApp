//
//  CollectionViewFlowLayouts.swift
//  LabourSearch
//
//  Created by LIN LIU on 16/11/19.
//  Copyright © 2019 LinLiu. All rights reserved.
//



import UIKit

class CollectionViewFlowLayouts: UICollectionViewFlowLayout {
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    init(spacing: CGFloat, direction: UICollectionView.ScrollDirection  ){
        super.init()
        self.minimumLineSpacing = spacing
        self.scrollDirection = .vertical
    }
    
}
