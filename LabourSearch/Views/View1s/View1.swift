//
//  MainView.swift
//  LabourSearch
//
//  Created by LIN LIU on 16/11/19.
//  Copyright © 2019 LinLiu. All rights reserved.
//

import UIKit

class View1: UIView {
    var resultLabel = UILabel()
    var hintLabel = UILabel()
    var displayLabel = UILabel()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.setViewFrameSize()
        
        self.defineBackgroundColor()
        
        self.addDisplayLabel()
        
        self.addHintLabel()
        
        self.addResultLabel()
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    func setViewFrameSize(){
        self.frame = CGRect(x: SizeConfig.mainViewX, y: SizeConfig.mainViewY, width: SizeConfig.mainViewWidth, height: SizeConfig.mainViewHeight)
    }
    
    
    func defineBackgroundColor(){
        self.backgroundColor = ColorConfig.mainViewBackgroundColor
        //self.backgroundColor = UIColor.white
    }
    
    
    func addResultLabel(){
        resultLabel = Labels.init(x: SizeConfig.resultLabelX,
                                  y: SizeConfig.resultLabelY,
                                  width: SizeConfig.resultLabelWidth,
                                  height: SizeConfig.resultLabelHeight,
                                  cornerRadius: 9,
                                  backgroundColor: ColorConfig.resultLabelBackgroundColor,
                                  textAlignment: NSTextAlignment.center,
                                  textColor: ColorConfig.resultLabelTextColor,
                                  fitWidth: true,
                                  font: FontConfig.resultLabelTextFont,
                                  text: StringValue.resultLabelTextString,
                                  manager: self)
        
        print(resultLabel.frame.width)
    }
    
    func addDisplayLabel(){
        displayLabel = Labels.init(x: SizeConfig.resultLabelX,
                                   y: SizeConfig.resultLabelY,
                                   width: SizeConfig.resultLabelWidth,
                                   height: SizeConfig.resultLabelHeight,
                                   cornerRadius: 9,
                                   backgroundColor: ColorConfig.displayLabelBackgroundColor,
                                   textAlignment: NSTextAlignment.left,
                                   textColor: ColorConfig.resultLabelTextColor,
                                   fitWidth: true,
                                   font: FontConfig.resultLabelTextFont,
                                   text: " ",
                                   manager: self)
    }
    
    
    func addHintLabel(){
        hintLabel = Labels.init(x: SizeConfig.hintLabelX,
                                y: SizeConfig.hintLabelY,
                                width: SizeConfig.hintLabelWidth,
                                height: SizeConfig.hintLabelHeight,
                                cornerRadius: 5,
                                backgroundColor: ColorConfig.hintLabelBackgroundColor,
                                textAlignment: NSTextAlignment.left,
                                textColor: ColorConfig.hintLabelTextColor,
                                fitWidth: true,
                                font: FontConfig.hintLabelTextFont,
                                text: StringValue.hintLabelTextString,
                                manager: self)
    }
    
  
}
