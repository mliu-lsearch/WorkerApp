//
//  SizeConfig.swift
//  LabourSearch
//
//  Created by LIN LIU on 16/11/19.
//  Copyright © 2019 LinLiu. All rights reserved.
//


import UIKit

struct SizeConfig {
    static let mainWidth = UIScreen.main.bounds.size.width
    static let mainHeight = UIScreen.main.bounds.size.height
    
    //M: mainView elements
    static let mainViewX: CGFloat = 0
    static let mainViewY: CGFloat = 0
    static let mainViewWidth = mainWidth
    static let mainViewHeight = mainWidth
    
    static let resultLabelX = mainWidth / 10 * 0.5
    static let resultLabelY = mainHeight / 10 * 1.2 + 20
    static let resultLabelHeight = UIScreen.main.bounds.size.height / 8.5
    static let resultLabelWidth = UIScreen.main.bounds.size.width  / 10 * 9
    
    static let hintLabelX = mainWidth / 10 * 3.46 - 110
    static let hintLabelY = mainHeight / 10.2 + 25
    static let hintLabelHeight = UIScreen.main.bounds.size.height / 10 * 2.3 / 3.5
    static let hintLabelWidth = UIScreen.main.bounds.size.width / 10 * 8.5
    
    static let taxHintLabelX = mainWidth / 10 * 2
    static let taxHintLabelY = mainHeight / 10 * 1.65
    static let taxHintLabelHeight = UIScreen.main.bounds.size.height / 10 * 2.3 / 3.5
    static let taxHintLabelWidth = UIScreen.main.bounds.size.width / 10 * 8.5
    
    static let superHintLabelX = mainWidth / 10 * 4.6
    static let superHintLabelY = mainHeight / 10 * 1.65
    static let superHintLabelHeight = UIScreen.main.bounds.size.height / 10 * 2.3 / 3.5
    static let superHintLabelWidth = UIScreen.main.bounds.size.width / 10 * 8.5
    
    static let timeHintLabelX = mainWidth / 10 * 7.5
    static let timeHintLabelY = mainHeight / 10 * 1.65
    static let timeHintLabelHeight = UIScreen.main.bounds.size.height / 10 * 2.3 / 3.5
    static let timeHintLabelWidth = UIScreen.main.bounds.size.width / 10 * 8.5
    
    static let taxDisplayLabelX = mainWidth / 10
    static let taxDisplayLabelY = mainHeight / 10 * 2.05
    static let taxDisplayLabelHeight = UIScreen.main.bounds.size.height / 10 * 2.3 / 7.8
    static let taxDisplayLabelWidth = UIScreen.main.bounds.size.width / 10 * 3
    
    //M: selectionView elements
    static let selectionViewX: CGFloat = 0
    static let selectionViewY: CGFloat = mainHeight / 10 * 2.5
    static let selectionViewWidth = UIScreen.main.bounds.size.width
    static let selectionViewHeight = UIScreen.main.bounds.size.height
    
    static let incomeLabelX = mainWidth / 10 * 0.5
    static let incomeLabelY = mainHeight / 10 * 1.4
    static let incomeLabelHeight = UIScreen.main.bounds.size.height / 10 * 0.4
    static let incomeLabelWidth = UIScreen.main.bounds.size.width  / 10 * 2.8
    
    static let startTimeLabelX = mainWidth / 10 * 0.5
    static let startTimeLabelY = mainHeight / 10 * 2
    static let startTimeLabelHeight = UIScreen.main.bounds.size.height / 10 * 0.4
    static let startTimeLabelWidth = UIScreen.main.bounds.size.width  / 10 * 2.8
    
    static let deductionsLabelX = mainWidth / 10 * 0.5
    static let deductionsLabelY = mainHeight / 10 * 2.6
    static let deductionsLabelHeight = UIScreen.main.bounds.size.height / 10 * 0.4
    static let deductionsLabelWidth = UIScreen.main.bounds.size.width  / 10 * 2.8
    
    static let residentialStatusLabelX = mainWidth / 10 * 0.5
    static let residentialStatusLabelY = mainHeight / 10 * 3.2
    static let residentialStatusLabelHeight = UIScreen.main.bounds.size.height / 10 * 0.4
    static let residentialStatusLabelWidth = UIScreen.main.bounds.size.width  / 10 * 3.1
    
    static let payFrequencyLabelX = mainWidth / 10 * 0.5
    static let payFrequencyLabelY = mainHeight / 10 * 3.8
    static let payFrequencyLabelHeight = UIScreen.main.bounds.size.height / 10 * 0.4
    static let payFrequencyLabelWidth = UIScreen.main.bounds.size.width  / 10 * 2.8
    
    static let incomeValueX = mainWidth / 10 * 3.71
    static let incomeValueY = mainHeight / 10 * 1.35
    static let incomeValueHeight = UIScreen.main.bounds.size.height / 10 * 0.5
    static let incomeValueWidth = UIScreen.main.bounds.size.width  / 10 * 5.8
    
    static let startTimeValueX = mainWidth / 10 * 3.71
    static let startTimeValueY = mainHeight / 10 * 1.95
    static let startTimeValueHeight = UIScreen.main.bounds.size.height / 10 * 0.5
    static let startTimeValueWidth = UIScreen.main.bounds.size.width  / 10 * 5.8
    
    static let endTimeValueX = mainWidth / 10 * 3.71
    static let endTimeValueY = mainHeight / 10 * 2.55
    static let endTimeValueHeight = UIScreen.main.bounds.size.height / 10 * 0.5
    static let endTimeValueWidth = UIScreen.main.bounds.size.width  / 10 * 5.8
    
    static let residentialStatusValueX = mainWidth / 10 * 3.71
    static let residentialStatusValueY = mainHeight / 10 * 3.15
    static let residentialStatusValueHeight = UIScreen.main.bounds.size.height / 10 * 0.5
    static let residentialStatusValueWidth = UIScreen.main.bounds.size.width  / 10 * 5.8
    
    static let payFrequencyValueX = mainWidth / 10 * 3.71
    static let payFrequencyValueY = mainHeight / 10 * 3.75
    static let payFrequencyValueHeight = UIScreen.main.bounds.size.height / 10 * 0.5
    static let payFrequencyValueWidth = UIScreen.main.bounds.size.width  / 10 * 5.8
    
    static let TFNLabelX = mainWidth / 10 * 3
    static let TFNLabelY = mainHeight / 10 * 3.5
    static let TFNLabelHeight = UIScreen.main.bounds.size.height / 10 * 0.5
    static let TFNLabelWidth = UIScreen.main.bounds.size.width  / 10 * 5.8 - UIScreen.main.bounds.size.width  / 10 * 5.8
    
    static let medicareLevyLabelX = mainWidth / 10 * 3
    static let medicareLevyLabelY = mainHeight / 10 * 4.1
    static let medicareLevyLabelHeight = UIScreen.main.bounds.size.height / 10 * 0.5
    static let medicareLevyLabelWidth = UIScreen.main.bounds.size.width  / 10 * 5.8 - UIScreen.main.bounds.size.width  / 10 * 5.8
    
    static let healthCoverLabelX = mainWidth / 10 * 3
    static let healthCoverLabelY = mainHeight / 10 * 4.7
    static let healthCoverLabelHeight = UIScreen.main.bounds.size.height / 10 * 0.5
    static let healthCoverLabelWidth = UIScreen.main.bounds.size.width  / 10 * 5.8 -  UIScreen.main.bounds.size.width  / 10 * 5.8
    
    static let TFNButtonX = mainWidth / 10 * 1.8
    static let TFNButtonY = mainHeight / 10 * 3.61
    static let TFNButtonHeight:CGFloat = 25
    static let TFNButtonWidth:CGFloat = 25 - 25
    
    static let medicareLevyButtonX = mainWidth / 10 * 1.8
    static let medicareLevyButtonY = mainHeight / 10 * 4.2
    static let medicareLevyButtonHeight:CGFloat = 25
    static let medicareLevyButtonWidth:CGFloat = 25 - 25
    
    static let healthCoverButtonX = mainWidth / 10 * 1.8
    static let healthCoverButtonY = mainHeight / 10 * 4.8
    static let healthCoverButtonHeight:CGFloat = 25
    static let healthCoverButtonWidth:CGFloat = 25 - 25
    
    static let calculateButtonX = mainWidth / 10 * 0.5
    static let calculateButtonY = mainHeight / 10 * 5.45
    static let calculateButtonHeight = UIScreen.main.bounds.size.height / 11.7
    static let calculateButtonWidth = UIScreen.main.bounds.size.width  / 10 * 9
    
    static let residentialStatusDefaultButtonX = mainWidth / 10 * 3.71
    static let residentialStatusDefaultButtonY = mainHeight / 10 * 1.95
    static let residentialStatusDefaultButtonHeight = UIScreen.main.bounds.size.height / 10 * 0.5
    static let residentialStatusDefaultButtonWidth = UIScreen.main.bounds.size.width  / 10 * 5.8
    
    static let residentialStatusForeignButtonX = mainWidth / 10 * 3.71
    static let residentialStatusForeignButtonY = mainHeight / 10 * 2.45
    static let residentialStatusForeignButtonHeight = UIScreen.main.bounds.size.height / 10 * 0.5
    static let residentialStatusForeignButtonWidth = UIScreen.main.bounds.size.width  / 10 * 5.8
    
    static let residentialStatusHolidayButtonX = mainWidth / 10 * 3.71
    static let residentialStatusHolidayButtonY = mainHeight / 10 * 2.95
    static let residentialStatusHolidayButtonHeight = UIScreen.main.bounds.size.height / 10 * 0.5
    static let residentialStatusHolidayButtonWidth = UIScreen.main.bounds.size.width  / 10 * 5.8
    
    static let residentialStatusAustralianButtonX = mainWidth / 10 * 3.71
    static let residentialStatusAustralianButtonY = mainHeight / 10 * 3.45
    static let residentialStatusAustralianButtonHeight = UIScreen.main.bounds.size.height / 10 * 0.5
    static let residentialStatusAustralianButtonWidth = UIScreen.main.bounds.size.width  / 10 * 5.8
    
    static let payFrequencyDefaultButtonX = mainWidth / 10 * 3.71
    static let payFrequencyDefaultButtonY = mainHeight /  10 * 3.75
    static let payFrequencyDefaultButtonHeight = UIScreen.main.bounds.size.height / 10 * 0.5
    static let payFrequencyDefaultButtonWidth = UIScreen.main.bounds.size.width  / 10 * 5.8
    
    static let payFrequencyWeeklyButtonX = mainWidth / 10 * 3.71
    static let payFrequencyWeeklyButtonY = mainHeight / 10 * 4.25
    static let payFrequencyWeeklyButtonHeight = UIScreen.main.bounds.size.height / 10 * 0.5
    static let payFrequencyWeeklyButtonWidth = UIScreen.main.bounds.size.width  / 10 * 5.8
    
    static let payFrequencyFornightlyButtonX = mainWidth / 10 * 3.71
    static let payFrequencyFornightlyButtonY = mainHeight / 10 * 4.75
    static let payFrequencyFornightlyButtonHeight = UIScreen.main.bounds.size.height / 10 * 0.5
    static let payFrequencyFornightlyButtonWidth = UIScreen.main.bounds.size.width  / 10 * 5.8
    
    static let payFrequencyMonthlyButtonX = mainWidth / 10 * 3.71
    static let payFrequencyMonthlyButtonY = mainHeight / 10 * 5.25
    static let payFrequencyMonthlyButtonHeight = UIScreen.main.bounds.size.height / 10 * 0.5
    static let payFrequencyMonthlyButtonWidth = UIScreen.main.bounds.size.width  / 10 * 5.8
    
    static let payFrequencyYearlyButtonX = mainWidth / 10 * 3.71
    static let payFrequencyYearlyButtonY = mainHeight / 10 * 5.75
    static let payFrequencyYearlyButtonHeight = UIScreen.main.bounds.size.height / 10 * 0.5
    static let payFrequencyYearlyButtonWidth = UIScreen.main.bounds.size.width  / 10 * 5.8
    
    
    //M: navigation bar 
    static var navigationControllerY: CGFloat = 44
    static var navigationControllerWidth: CGFloat = mainWidth
    static var navigationControllerHeight: CGFloat = mainHeight - navigationControllerY -  tabBarHeight //M: need reduce the tabbar height
    
    static var tabBarHeight: CGFloat = 49
}
