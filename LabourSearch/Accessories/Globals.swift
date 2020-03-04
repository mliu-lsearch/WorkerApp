//
//  Globals.swift
//  LabourSearch
//
//  Created by LIN LIU on 29/12/19.
//  Copyright © 2019 LinLiu. All rights reserved.
//

import Foundation
import UIKit





var calendarModel = CalendarModel()




//M: collectionview instances for global purposes
var collectionView1 = CollectionViews.init(layout: CollectionViewFlowLayouts.init(spacing: 20, direction: .vertical), x: 0, y: 0, width:  SizeConfig2.collectionViewUpperWidth, height: SizeConfig2.collectionViewUpperHeight, backgroundColor: ColorConfig.mainViewBackgroundColor)


var collectionView2 = CollectionViews.init(layout:  CollectionViewFlowLayouts.init(spacing: 2, direction: .vertical), x: 0, y: 55, width:  UIScreen.main.bounds.size.width, height: SizeConfig2.collectionViewDownHeight - 100, backgroundColor: ColorConfig.mainViewBackgroundColor)


var collectionView3 = CollectionViews.init(layout:  CollectionViewFlowLayouts.init(spacing: 2, direction: .horizontal), x: 0, y: 10, width:  UIScreen.main.bounds.size.width, height: 100, backgroundColor: .clear)


var collectionView4 = CollectionViews.init(layout:  CollectionViewFlowLayouts.init(spacing: 2, direction: .horizontal), x: 0, y: 110, width:  UIScreen.main.bounds.size.width, height: 100, backgroundColor: .clear)


//M: the selector index from collection view1 when user selects the cell
var selectedIndexFromCollectionView1: IndexPath? = nil

var selectedBGColor = ColorConfig.mainViewBackgroundColor

var selectedBGColors = [ColorConfig.mainViewBackgroundColor]

var indexPathSelectedColorDictionary = [IndexPath?: UIColor]()

var view2DownViewLabel1 = UILabel()



func createSelector(rowCell: UICollectionViewCell){
    rowCell.selectedBackgroundView = UIView(frame: rowCell.bounds)
    rowCell.selectedBackgroundView!.layer.borderColor = ColorConfig.selectorColorWhite.cgColor
    rowCell.selectedBackgroundView!.layer.borderWidth = 3.7
    rowCell.selectedBackgroundView!.layer.cornerRadius = rowCell.frame.width / 2
    rowCell.bringSubviewToFront(rowCell.selectedBackgroundView!)
}




