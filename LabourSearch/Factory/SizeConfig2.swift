//
//  SizeConfig.swift
//  LabourSearch
//
//  Created by LIN LIU on 16/11/19.
//  Copyright © 2019 LinLiu. All rights reserved.
//


import UIKit

struct SizeConfig2 {
    static let mainWidth = UIScreen.main.bounds.size.width
    static let mainHeight = UIScreen.main.bounds.size.height
    
    //M: mainView elements
    static let mainViewX: CGFloat = 0
    static let mainViewY: CGFloat = 0
    static let mainViewWidth = mainWidth
    static let mainViewHeight = mainHeight
    
    
    //M: view2UpperView
    static let view2UpperViewWidth = mainWidth
    static let view2UpperViewHeight = mainHeight / 10 * 6
    
    
    //M: collectionView for the upper view
    static let collectionViewUpperWidth = mainWidth
    
    
    //M: need to be set as ratio rather than the fixed size
    static let collectionViewUpperHeight = mainHeight / 10 * 6
    
    


    
    //M: cell
    static let cellWidth = (collectionViewUpperWidth / 6.5) - 20
    static let cellHeight = (collectionViewUpperWidth / 6.5) - 20
    
    
    
    //M: collectionView2 for the down view
    static let collectionViewDownWidth = mainWidth
    static let collectionViewDownHeight = mainHeight / 10 * 4 - 20
    
    
    //M: marginwidth for switch
    static let marginWidth = UIScreen.main.bounds.size.width / 24
    static let marginHeight = UIScreen.main.bounds.size.height  / 10 * 6.5 / 6
    static let buttonWidth = UIScreen.main.bounds.size.width / 6
}
