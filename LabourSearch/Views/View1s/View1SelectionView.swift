//
//  View1SelectionView.swift
//  LabourSearch
//
//  Created by LIN LIU on 16/11/19.
//  Copyright © 2019 LinLiu. All rights reserved.
//


import UIKit

class View1SelectionView: UIView {
    
    var display2Label = UILabel()
    var taxHintLabel = UILabel()
    var superHintLabel = UILabel()
    var timeHintLabel = UILabel()
    var taxDisplayLabel = UILabel()
    var superDisplayLabel = UILabel()
    var timeDisplayLabel = UILabel()
    var taxResultLabel = UILabel()
    var superResultLabel = UILabel()
    var timeResultLabel = UILabel()
    
    var incomeLabel = UILabel()
    var StartTimeLabel = UILabel()
    var deductionsLabel = UILabel()
    var residentialStatusLabel = UILabel()
    var payFrequencyLabel = UILabel()
    var hourlyRateValue = UITextField()
    var startTimeValue = UITextField()
    
    var endTimeValue = UITextField()
    var residentialStatusValue = UITextField()
    var shiftsValue = UITextField()
    var payFrequencyValue = UITextField()
    
    var TFNLabel = UILabel()
    var medicareLevyLabel = UILabel()
    var healthCoverLabel = UILabel()
    
    var TFNButton = UIButton()
    var medicareLevyButton = UIButton()
    var healthCoverButton = UIButton()
    
    var residentialStatusButtons: [UIButton] = []
    var payFrequencyButtons: [UIButton] = []
    var checkboxButtons: [UIButton] = []
    
    var residentialStatusAllButtons: [UIButton] = []
    var payFrequencyAllButtons: [UIButton] = []
    
    var calculateButton = UIButton()
    
    var residentialStatusDefaultButton = UIButton()
    var residentialStatusForeignButton = UIButton()
    var residentialStatusHolidayButton = UIButton()
    var residentialStatusAustralianButton = UIButton()
    
    var payFrequencyDefaultButton = UIButton()
    var payFrequencyWeeklyButton = UIButton()
    var payFrequencyFornightlyButton = UIButton()
    var payFrequencyMonthlyButton = UIButton()
    var payFrequencyYearlyButton = UIButton()
    
    var gradientLayer1 = GradientLayers()
    var gradientLayer2 = GradientLayers()
    var gradientLayer3 = GradientLayers()
    var gradientLayer4 = GradientLayers()
    var gradientLayer5 = GradientLayers()
    var gradientLayer6 = GradientLayers()
    var gradientLayer7 = GradientLayers()
    var gradientLayer8 = GradientLayers()
    var gradientLayer9 = GradientLayers()
    var gradientLayer10 = GradientLayers()
    
    let calculateButtonImage: UIImage? = UIImage (named: "calculateButton")
    let formatter = DateFormatter()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.setViewFrameSize()
        
        self.defineBackgroundColor()
        
        self.addDisplay2Label()
        
        self.addTaxHintLabel()
        
        self.addSuperHintLabel()
        
        self.addTimeHintLabel()
        
        self.addTaxResultLabel()
        
        self.addSuperResultLabel()
        
        self.addtimeResultLabel()
        
        self.addIncomeLabel()
        
        self.addFinancialYearLabel()
        
        self.addDeductionsLabel()
        
        self.addResidentialStatusLabel()
        
        self.addPayFrequencyLabel()
        
        self.addTFNLabel()
        
        self.addMedicareLevyLabel()
        
        self.addHealthCoverLabel()
        
        self.addHourlyRateValue()
        
        self.addStartTimeValue()
        
        self.addEndTimeValue()
        
        self.addResidentialStatusValue()
        
        self.addShiftsValue()
        
        self.addPayFrequencyValue()
        
        self.addTFNButton()
        
        self.addMedicareLevyButton()
        
        self.addHealthCoverButton()
        
        self.addCalculateButton()
        
        self.addResidentialStatusDefaultButton()
        
        self.addResidentialStatusForeignButton()
        
        self.addResidentialStatusHolidayButton()
        
        self.addResidentialStatusAustralianButton()
        
        self.addPayFrequencyDefaultButton()
        
        self.addPayFrequencyWeeklyButton()
        
        self.addPayFrequencyFornightlyButton()
        
        self.addPayFrequencyMonthlyButton()
        
        self.addPayFrequencyYearlyButton()
        
        self.groupButtons()
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func groupButtons(){
        residentialStatusButtons = [residentialStatusForeignButton,residentialStatusHolidayButton,residentialStatusAustralianButton]
        
        payFrequencyButtons = [payFrequencyWeeklyButton,payFrequencyFornightlyButton,payFrequencyMonthlyButton,payFrequencyYearlyButton]
        
        checkboxButtons = [TFNButton, medicareLevyButton, healthCoverButton]
        
        residentialStatusAllButtons = [residentialStatusDefaultButton, residentialStatusForeignButton,residentialStatusHolidayButton,residentialStatusAustralianButton]
        
        payFrequencyAllButtons = [payFrequencyDefaultButton, payFrequencyWeeklyButton,payFrequencyFornightlyButton,payFrequencyMonthlyButton,payFrequencyYearlyButton]
    }
    
    func setViewFrameSize(){
        self.frame = CGRect(x: SizeConfig.selectionViewX, y: SizeConfig.selectionViewY, width:  SizeConfig.selectionViewWidth, height: SizeConfig.selectionViewHeight)
    }
    
    
    func defineBackgroundColor(){
        self.backgroundColor = ColorConfig.selectionViewBackgroundColor
    }
    
    
    func addDisplay2Label(){
        display2Label = Labels.init(x: SizeConfig.resultLabelX,
                                   y: SizeConfig.resultLabelY - SizeConfig.resultLabelY + 2,
                                   width: SizeConfig.resultLabelWidth,
                                   height: SizeConfig.resultLabelHeight / 3 * 2,
                                   cornerRadius: 9,
                                   backgroundColor: ColorConfig.displayLabelBackgroundColor,
                                   textAlignment: NSTextAlignment.center,
                                   textColor: ColorConfig.resultLabelTextColor,
                                   fitWidth: true,
                                   font: FontConfig.resultLabelTextFont,
                                   text: " ",
                                   manager: self)
    }
    
    func addTaxHintLabel(){
        taxHintLabel = Labels.init(x: SizeConfig.taxHintLabelX - 50,
                                   y: SizeConfig.taxHintLabelY - SizeConfig.taxHintLabelY - 16,
                                   width: SizeConfig.taxHintLabelWidth,
                                   height: SizeConfig.taxHintLabelHeight,
                                   cornerRadius: 5,
                                   backgroundColor: ColorConfig.hintLabelBackgroundColor,
                                   textAlignment: NSTextAlignment.left,
                                   textColor: ColorConfig.hintLabelTextColor,
                                   fitWidth: true,
                                   font: FontConfig.hintLabelTextFont,
                                   text: StringValue.taxHintLabelTextString,
                                   manager: self)
    }
    
    func addSuperHintLabel(){
        superHintLabel = Labels.init(x: SizeConfig.superHintLabelX - 25,
                                     y: SizeConfig.taxHintLabelY - SizeConfig.taxHintLabelY - 16,
                                     width: SizeConfig.superHintLabelWidth,
                                     height: SizeConfig.superHintLabelHeight,
                                     cornerRadius: 5,
                                     backgroundColor: ColorConfig.hintLabelBackgroundColor,
                                     textAlignment: NSTextAlignment.natural,
                                     textColor: ColorConfig.hintLabelTextColor,
                                     fitWidth: true,
                                     font: FontConfig.hintLabelTextFont,
                                     text: StringValue.superHintLabelTextString,
                                     manager: self)
    }
    
    func addTimeHintLabel(){
        timeHintLabel = Labels.init(x: SizeConfig.timeHintLabelX - 10,
                                    y: SizeConfig.taxHintLabelY - SizeConfig.taxHintLabelY - 16,
                                    width: SizeConfig.timeHintLabelWidth,
                                    height: SizeConfig.timeHintLabelHeight,
                                    cornerRadius: 5,
                                    backgroundColor: ColorConfig.hintLabelBackgroundColor,
                                    textAlignment: .natural,
                                    textColor: ColorConfig.hintLabelTextColor,
                                    fitWidth: true,
                                    font: FontConfig.hintLabelTextFont,
                                    text: StringValue.timeHintLabelTextString,
                                    manager: self)
    }
    
    func addTaxResultLabel(){
        taxResultLabel = Labels.init(x: SizeConfig.taxHintLabelX - SizeConfig.taxHintLabelX + 30,
                                      y: SizeConfig.taxHintLabelY - SizeConfig.taxHintLabelY + 20,
                                      width: SizeConfig.resultLabelWidth / 4,
                                      height: SizeConfig.resultLabelHeight / 2,
                                      cornerRadius: 9,
                                      backgroundColor: ColorConfig.resultLabelBackgroundColor,
                                      textAlignment: NSTextAlignment.center,
                                      textColor: ColorConfig.resultLabelTextColor,
                                      fitWidth: true,
                                      font: FontConfig.taxResultLabelTextFont,
                                      text: StringValue.resultLabelTextString,
                                      manager: self)
    }
    
    func addSuperResultLabel(){
        superResultLabel = Labels.init(x: SizeConfig.superHintLabelX - 25,
                                     y: SizeConfig.taxHintLabelY - SizeConfig.taxHintLabelY + 20,
                                     width: SizeConfig.resultLabelWidth / 4,
                                     height: SizeConfig.resultLabelHeight / 2,
                                     cornerRadius: 9,
                                     backgroundColor: ColorConfig.resultLabelBackgroundColor,
                                     textAlignment: NSTextAlignment.center,
                                     textColor: ColorConfig.resultLabelTextColor,
                                     fitWidth: true,
                                     font: FontConfig.taxResultLabelTextFont,
                                     text: StringValue.resultLabelTextString,
                                     manager: self)
    }
    
    func addtimeResultLabel(){
        timeResultLabel = Labels.init(x: SizeConfig.timeHintLabelX - 10,
                                       y: SizeConfig.taxHintLabelY - SizeConfig.taxHintLabelY + 20,
                                       width: SizeConfig.resultLabelWidth / 4,
                                       height: SizeConfig.resultLabelHeight / 2,
                                       cornerRadius: 9,
                                       backgroundColor: ColorConfig.resultLabelBackgroundColor,
                                       textAlignment: NSTextAlignment.center,
                                       textColor: ColorConfig.resultLabelTextColor,
                                       fitWidth: true,
                                       font: FontConfig.taxResultLabelTextFont,
                                       text: "",
                                       manager: self)
    }
    
    func addIncomeLabel(){
        incomeLabel = Labels.init(x: SizeConfig.incomeLabelX,
                                  y: SizeConfig.incomeLabelY,
                                  width: SizeConfig.incomeLabelWidth,
                                  height: SizeConfig.incomeLabelHeight,
                                  cornerRadius: 9,
                                  backgroundColor: ColorConfig.incomeLabelBackgroundColor,
                                  textAlignment: NSTextAlignment.left,
                                  textColor: ColorConfig.incomeLabelTextColor,
                                  fitWidth: true,
                                  font: FontConfig.incomeLabelTextFont,
                                  text: StringValue.hourlyRateLabelTextString,
                                  manager: self)
        
    }
    
    func addFinancialYearLabel(){
       
        
        StartTimeLabel = Labels.init(x: SizeConfig.startTimeLabelX,
                                         y: SizeConfig.startTimeLabelY,
                                         width: SizeConfig.startTimeLabelWidth,
                                         height: SizeConfig.startTimeLabelHeight,
                                         cornerRadius: 9,
                                         backgroundColor: ColorConfig.startTimeLabelBackgroundColor,
                                         textAlignment: NSTextAlignment.left,
                                         textColor: ColorConfig.startTimeLabelTextColor,
                                         fitWidth: true,
                                         font: FontConfig.startTimeLabelTextFont,
                                         text: StringValue.startTimeLabelTextString,
                                         manager: self)
    }
    
    func addDeductionsLabel(){
        deductionsLabel = Labels.init(x: SizeConfig.deductionsLabelX,
                                      y: SizeConfig.deductionsLabelY,
                                      width: SizeConfig.deductionsLabelWidth,
                                      height: SizeConfig.deductionsLabelHeight,
                                      cornerRadius: 9,
                                      backgroundColor: ColorConfig.deductionsLabelBackgroundColor,
                                      textAlignment: NSTextAlignment.left,
                                      textColor: ColorConfig.deductionsLabelTextColor,
                                      fitWidth: true,
                                      font: FontConfig.deductionsLabelTextFont,
                                      text: StringValue.deductionsLabelTextString,
                                      manager: self)
    }
    
    func addResidentialStatusLabel(){
        residentialStatusLabel = Labels.init(x: SizeConfig.residentialStatusLabelX,
                                             y: SizeConfig.residentialStatusLabelY,
                                             width: SizeConfig.residentialStatusLabelWidth,
                                             height: SizeConfig.residentialStatusLabelHeight,
                                             cornerRadius: 9,
                                             backgroundColor: ColorConfig.residentialStatusLabelBackgroundColor,
                                             textAlignment: NSTextAlignment.left,
                                             textColor: ColorConfig.residentialStatusLabelTextColor,
                                             fitWidth: true,
                                             font: FontConfig.residentialStatusLabelTextFont,
                                             text: StringValue.residentialStatusLabelTextString,
                                             manager: self)
    }
    

    func addPayFrequencyLabel(){
        payFrequencyLabel = Labels.init(x: SizeConfig.payFrequencyLabelX,
                                        y: SizeConfig.payFrequencyLabelY,
                                        width: SizeConfig.payFrequencyLabelWidth,
                                        height: SizeConfig.payFrequencyLabelHeight,
                                        cornerRadius: 9,
                                        backgroundColor: ColorConfig.payFrequencyLabelBackgroundColor,
                                        textAlignment: NSTextAlignment.left,
                                        textColor: ColorConfig.payFrequencyLabelTextColor,
                                        fitWidth: true,
                                        font: FontConfig.payFrequencyLabelTextFont,
                                        text: StringValue.payFrequencyLabelTextString,
                                        manager: self)
    }
    
    func addTFNLabel(){
        TFNLabel = Labels.init(x: SizeConfig.TFNLabelX,
                               y: SizeConfig.TFNLabelY,
                               width: SizeConfig.TFNLabelWidth,
                               height: SizeConfig.TFNLabelHeight,
                               cornerRadius: 9,
                               backgroundColor: ColorConfig.TFNLabelBackgroundColor,
                               textAlignment: NSTextAlignment.left,
                               textColor: ColorConfig.TFNLabelTextColor,
                               fitWidth: true,
                               font: FontConfig.TFNLabelTextFont,
                               text: StringValue.TFNLabelTextString,
                               manager: self)
    }
    
    func addMedicareLevyLabel(){
        medicareLevyLabel = Labels.init(x: SizeConfig.medicareLevyLabelX,
                                        y: SizeConfig.medicareLevyLabelY,
                                        width: SizeConfig.medicareLevyLabelWidth,
                                        height: SizeConfig.medicareLevyLabelHeight,
                                        cornerRadius: 9,
                                        backgroundColor: ColorConfig.medicareLevyLabelBackgroundColor,
                                        textAlignment: NSTextAlignment.left,
                                        textColor: ColorConfig.medicareLevyLabelTextColor,
                                        fitWidth: true,
                                        font: FontConfig.medicareLevyLabelTextFont,
                                        text: StringValue.medicareLevyLabelTextString,
                                        manager: self)
    }
    
    func addHealthCoverLabel(){
        healthCoverLabel = Labels.init(x: SizeConfig.healthCoverLabelX,
                                       y: SizeConfig.healthCoverLabelY,
                                       width: SizeConfig.healthCoverLabelWidth,
                                       height: SizeConfig.healthCoverLabelHeight,
                                       cornerRadius: 9,
                                       backgroundColor: ColorConfig.healthCoverLabelBackgroundColor,
                                       textAlignment: NSTextAlignment.left,
                                       textColor: ColorConfig.healthCoverLabelTextColor,
                                       fitWidth: true,
                                       font: FontConfig.healthCoverLabelTextFont,
                                       text: StringValue.healthCoverLabelTextString,
                                       manager: self)
    }
    
    func addHourlyRateValue(){
        hourlyRateValue = TextFields.init(x: SizeConfig.incomeValueX,
                                      y: SizeConfig.incomeValueY,
                                      width: SizeConfig.incomeValueWidth,
                                      height: SizeConfig.incomeValueHeight,
                                      cornerRadius: 9,
                                      backgroundColor: ColorConfig.incomeValueBackgroundColor,
                                      textAlignment: NSTextAlignment.center,
                                      textColor: ColorConfig.incomeValueTextColor,
                                      fitWidth: true,
                                      font: FontConfig.incomeValueTextFont,
                                      text: StringValue.incomeValueTextString,
                                      manager: self)
        
        
        gradientLayer1.setLayerProps(parent: self.bounds, leftColor: ColorConfig.gradientLeftColor.cgColor, rightColor: ColorConfig.gradientRightColor.cgColor, leftLocation: 0.0, rightLocation: 1.0, leftStartPoint: 0, rightStartPoint: 0, leftEndPoint: 1, rightEndPoint: 0)
        let shape = CAShapeLayer()
        shape.lineWidth = 4
        shape.path = UIBezierPath(roundedRect: self.hourlyRateValue.bounds, cornerRadius: self.hourlyRateValue.layer.cornerRadius).cgPath
        shape.strokeColor = UIColor.black.cgColor
        shape.fillColor = UIColor.clear.cgColor
        
        gradientLayer1.mask = shape
        hourlyRateValue.layer.addSublayer(gradientLayer1)
        
        hourlyRateValue.keyboardType = UIKeyboardType.decimalPad
        
    }
    
    func addStartTimeValue(){
        let date = Date()
        formatter.dateFormat = "HH:mm"
        startTimeValue = TextFields.init(x: SizeConfig.startTimeValueX,
                                         y: SizeConfig.startTimeValueY,
                                         width: SizeConfig.startTimeValueWidth,
                                         height: SizeConfig.startTimeValueHeight,
                                         cornerRadius: 9,
                                         backgroundColor: ColorConfig.startTimeValueBackgroundColor,
                                         textAlignment: NSTextAlignment.center,
                                         textColor: ColorConfig.startTimeValueTextColor,
                                         fitWidth: true,
                                         font: FontConfig.startTimeValueTextFont,
                                         text: formatter.string(from: date),
                                         manager: self)
        
        gradientLayer2.setLayerProps(parent: self.bounds, leftColor: ColorConfig.gradientLeftColor.cgColor, rightColor: ColorConfig.gradientRightColor.cgColor, leftLocation: 0.0, rightLocation: 1.0, leftStartPoint: 0, rightStartPoint: 0, leftEndPoint: 1, rightEndPoint: 0)
        let shape = CAShapeLayer()
        shape.lineWidth = 4
        shape.path = UIBezierPath(roundedRect: self.startTimeValue.bounds, cornerRadius: self.startTimeValue.layer.cornerRadius).cgPath
        shape.strokeColor = UIColor.black.cgColor
        shape.fillColor = UIColor.clear.cgColor
        
        gradientLayer2.mask = shape
        startTimeValue.layer.addSublayer(gradientLayer2)
    }
    
    func addEndTimeValue(){
        let date = Date()
        formatter.dateFormat = "HH:mm"
        endTimeValue = TextFields.init(x: SizeConfig.endTimeValueX,
                                          y: SizeConfig.endTimeValueY,
                                          width: SizeConfig.endTimeValueWidth,
                                          height: SizeConfig.endTimeValueHeight,
                                          cornerRadius: 9,
                                          backgroundColor: ColorConfig.endTimeValueBackgroundColor,
                                          textAlignment: NSTextAlignment.center,
                                          textColor: ColorConfig.endTimeValueTextColor,
                                          fitWidth: true,
                                          font: FontConfig.endTimeValueTextFont,
                                          text: formatter.string(from: date),
                                          manager: self)
        
        gradientLayer3.setLayerProps(parent: self.bounds, leftColor: ColorConfig.gradientLeftColor.cgColor, rightColor: ColorConfig.gradientRightColor.cgColor, leftLocation: 0.0, rightLocation: 1.0, leftStartPoint: 0, rightStartPoint: 0, leftEndPoint: 1, rightEndPoint: 0)
        let shape = CAShapeLayer()
        shape.lineWidth = 4
        shape.path = UIBezierPath(roundedRect: self.endTimeValue.bounds, cornerRadius: self.endTimeValue.layer.cornerRadius).cgPath
        shape.strokeColor = UIColor.black.cgColor
        shape.fillColor = UIColor.clear.cgColor
        
        gradientLayer3.mask = shape
        endTimeValue.layer.addSublayer(gradientLayer3)
    }
    
    func addResidentialStatusValue(){
        residentialStatusValue = TextFields.init(x: SizeConfig.residentialStatusValueX,
                                                 y: SizeConfig.residentialStatusValueY,
                                                 width: SizeConfig.residentialStatusValueWidth,
                                                 height: SizeConfig.residentialStatusValueHeight,
                                                 cornerRadius: 9,
                                                 backgroundColor: ColorConfig.residentialStatusValueBackgroundColor,
                                                 textAlignment: NSTextAlignment.center,
                                                 textColor: ColorConfig.residentialStatusValueTextColor,
                                                 fitWidth: true,
                                                 font: FontConfig.residentialStatusValueTextFont,
                                                 text: StringValue.residentialStatusValueTextString,
                                                 manager: self)
        residentialStatusValue.textColor?.setFill()
        
        gradientLayer4.setLayerProps(parent: self.bounds, leftColor: ColorConfig.gradientLeftColor.cgColor, rightColor: ColorConfig.gradientRightColor.cgColor, leftLocation: 0.0, rightLocation: 1.0, leftStartPoint: 0, rightStartPoint: 0, leftEndPoint: 1, rightEndPoint: 0)
        let shape = CAShapeLayer()
        shape.lineWidth = 4
        shape.path = UIBezierPath(roundedRect: self.residentialStatusValue.bounds, cornerRadius: self.residentialStatusValue.layer.cornerRadius).cgPath
        shape.strokeColor = UIColor.black.cgColor
        shape.fillColor = UIColor.clear.cgColor
        
        gradientLayer4.mask = shape
        residentialStatusValue.layer.addSublayer(gradientLayer4)
    }
    
    func addPayFrequencyValue(){
        payFrequencyValue = TextFields.init(x: SizeConfig.payFrequencyValueX,
                                            y: SizeConfig.payFrequencyValueY,
                                            width: SizeConfig.payFrequencyValueWidth,
                                            height: SizeConfig.payFrequencyValueHeight,
                                            cornerRadius: 9,
                                            backgroundColor: ColorConfig.payFrequencyValueBackgroundColor,
                                            textAlignment: NSTextAlignment.center,
                                            textColor: ColorConfig.payFrequencyValueTextColor,
                                            fitWidth: true,
                                            font: FontConfig.payFrequencyValueTextFont,
                                            text: StringValue.payFrequencyValueTextString,
                                            manager: self)
        
        gradientLayer5.setLayerProps(parent: self.bounds, leftColor: ColorConfig.gradientLeftColor.cgColor, rightColor: ColorConfig.gradientRightColor.cgColor, leftLocation: 0.0, rightLocation: 1.0, leftStartPoint: 0, rightStartPoint: 0, leftEndPoint: 1, rightEndPoint: 0)
        let shape = CAShapeLayer()
        shape.lineWidth = 4
        shape.path = UIBezierPath(roundedRect: self.payFrequencyValue.bounds, cornerRadius: self.payFrequencyValue.layer.cornerRadius).cgPath
        shape.strokeColor = UIColor.black.cgColor
        shape.fillColor = UIColor.clear.cgColor
        
        gradientLayer5.mask = shape
        payFrequencyValue.layer.addSublayer(gradientLayer5)
    }
    
    func addTFNButton(){
        TFNButton = Buttons.init(x: SizeConfig.TFNButtonX,
                                 y: SizeConfig.TFNButtonY,
                                 width: SizeConfig.TFNButtonWidth,
                                 height: SizeConfig.TFNButtonHeight,
                                 title: StringValue.TFNButtonTextString,
                                 fontSize: FontConfig.TFNButtonTextFont,
                                 cornerRadius: 3,
                                 backgroundColor: ColorConfig.TFNButtonBackgroundColor,
                                 titleColor: ColorConfig.TFNButtonTextColor,
                                 manager: self)
        
        gradientLayer6.setLayerProps(parent: self.TFNButton.bounds, leftColor: ColorConfig.gradientLeftColor.cgColor, rightColor: ColorConfig.gradientRightColor.cgColor, leftLocation: 0.0, rightLocation: 1.5, leftStartPoint: 0, rightStartPoint: 0, leftEndPoint: 1, rightEndPoint: 0)
        
        
        let shape = CAShapeLayer()
        shape.lineWidth = 3
        shape.path = UIBezierPath(roundedRect: self.TFNButton.bounds, cornerRadius: self.TFNButton.layer.cornerRadius).cgPath
        shape.strokeColor = UIColor.black.cgColor
        shape.fillColor = UIColor.clear.cgColor
        
        gradientLayer6.mask = shape
        TFNButton.layer.addSublayer(gradientLayer6)
    }
    
    func addMedicareLevyButton(){
        medicareLevyButton = Buttons.init(x: SizeConfig.medicareLevyButtonX,
                                          y: SizeConfig.medicareLevyButtonY,
                                          width: SizeConfig.medicareLevyButtonWidth,
                                          height: SizeConfig.medicareLevyButtonHeight,
                                          title: StringValue.medicareLevyButtonTextString,
                                          fontSize: FontConfig.medicareLevyButtonTextFont,
                                          cornerRadius: 3,
                                          backgroundColor: ColorConfig.medicareLevyButtonBackgroundColor,
                                          titleColor: ColorConfig.medicareLevyButtonTextColor,
                                          manager: self)
        
        gradientLayer7.setLayerProps(parent: self.TFNButton.bounds, leftColor: ColorConfig.gradientLeftColor.cgColor, rightColor: ColorConfig.gradientRightColor.cgColor, leftLocation: 0.0, rightLocation: 1.5, leftStartPoint: 0, rightStartPoint: 0, leftEndPoint: 1, rightEndPoint: 0)
        
        
        let shape = CAShapeLayer()
        shape.lineWidth = 3
        shape.path = UIBezierPath(roundedRect: self.medicareLevyButton.bounds, cornerRadius: self.medicareLevyButton.layer.cornerRadius).cgPath
        shape.strokeColor = UIColor.black.cgColor
        shape.fillColor = UIColor.clear.cgColor
        
        gradientLayer7.mask = shape
        medicareLevyButton.layer.addSublayer(gradientLayer7)
    }
    
    func addHealthCoverButton(){
        healthCoverButton = Buttons.init(x: SizeConfig.healthCoverButtonX,
                                         y: SizeConfig.healthCoverButtonY,
                                         width: SizeConfig.healthCoverButtonWidth,
                                         height: SizeConfig.healthCoverButtonHeight,
                                         title: StringValue.healthCoverButtonTextString,
                                         fontSize: FontConfig.healthCoverButtonTextFont,
                                         cornerRadius: 3,
                                         backgroundColor: ColorConfig.healthCoverButtonBackgroundColor,
                                         titleColor: ColorConfig.healthCoverButtonTextColor,
                                         manager: self)
        
        gradientLayer8.setLayerProps(parent: self.healthCoverButton.bounds, leftColor: ColorConfig.gradientLeftColor.cgColor, rightColor: ColorConfig.gradientRightColor.cgColor, leftLocation: 0.0, rightLocation: 1.5, leftStartPoint: 0, rightStartPoint: 0, leftEndPoint: 1, rightEndPoint: 0)
        
        
        let shape = CAShapeLayer()
        shape.lineWidth = 3
        shape.path = UIBezierPath(roundedRect: self.healthCoverButton.bounds, cornerRadius: self.healthCoverButton.layer.cornerRadius).cgPath
        shape.strokeColor = UIColor.black.cgColor
        shape.fillColor = UIColor.clear.cgColor
        
        gradientLayer8.mask = shape
        healthCoverButton.layer.addSublayer(gradientLayer8)
    }
    
    func addCalculateButton(){
        calculateButton = Buttons.init(x: SizeConfig.calculateButtonX,
                                       y: SizeConfig.calculateButtonY,
                                       width: SizeConfig.calculateButtonWidth,
                                       height: SizeConfig.calculateButtonHeight,
                                       title: StringValue.calculateButtonTextString,
                                       fontSize: FontConfig.calculateButtonTextFont,
                                       cornerRadius: 4,
                                       backgroundColor: ColorConfig.calculateButtonBackgroundColor,
                                       titleColor: ColorConfig.calculateButtonTextColor,
                                       manager: self)
        
        calculateButton.setBackgroundImage(calculateButtonImage, for: .normal)
    }
    
    func addResidentialStatusDefaultButton(){
        residentialStatusDefaultButton = Buttons.init(x: SizeConfig.residentialStatusDefaultButtonX,
                                                      y: SizeConfig.residentialStatusDefaultButtonY,
                                                      width: 0,
                                                      height: SizeConfig.residentialStatusDefaultButtonHeight,
                                                      title: StringValue.residentialStatusDefaultButtonTextString,
                                                      fontSize: FontConfig.residentialStatusDefaultButtonTextFont,
                                                      cornerRadius: 4,
                                                      backgroundColor: ColorConfig.residentialStatusDefaultButtonBackgroundColor,
                                                      titleColor: ColorConfig.residentialStatusDefaultButtonTextColor,
                                                      manager: self)
    }
    
    func addShiftsValue(){
        shiftsValue = TextFields.init(x: SizeConfig.residentialStatusDefaultButtonX,
                            y: SizeConfig.residentialStatusHolidayButtonY + 20,
                            width: SizeConfig.residentialStatusForeignButtonWidth,
                            height: SizeConfig.residentialStatusForeignButtonHeight,
                            cornerRadius: 9,
                            backgroundColor: ColorConfig.residentialStatusLabelBackgroundColor,
                            textAlignment: NSTextAlignment.center,
                            textColor: ColorConfig.incomeValueTextColor,
                            fitWidth: true,
                            font: FontConfig.residentialStatusLabelTextFont,
                            text: "0",
                            manager: self)
         shiftsValue.keyboardType = UIKeyboardType.decimalPad
    }
    
    func addResidentialStatusForeignButton(){
        residentialStatusForeignButton = Buttons.init(x: SizeConfig.residentialStatusForeignButtonX,
                                                      y: SizeConfig.residentialStatusForeignButtonY,
                                                      width: SizeConfig.residentialStatusForeignButtonWidth,
                                                      height: SizeConfig.residentialStatusForeignButtonHeight,
                                                      title: StringValue.residentialStatusForeignButtonTextString,
                                                      fontSize: FontConfig.residentialStatusForeignButtonTextFont,
                                                      cornerRadius: 0,
                                                      backgroundColor: ColorConfig.residentialStatusForeignButtonBackgroundColor,
                                                      titleColor: ColorConfig.residentialStatusForeignButtonTextColor,
                                                      manager: self)
        
        residentialStatusForeignButton.roundedButton()
    }
    
    
    func addResidentialStatusHolidayButton(){
        residentialStatusHolidayButton = Buttons.init(x: SizeConfig.residentialStatusHolidayButtonX,
                                                      y: SizeConfig.residentialStatusHolidayButtonY,
                                                      width: SizeConfig.residentialStatusHolidayButtonWidth,
                                                      height: SizeConfig.residentialStatusHolidayButtonHeight,
                                                      title: StringValue.residentialStatusHolidayButtonTextString,
                                                      fontSize: FontConfig.residentialStatusHolidayButtonTextFont,
                                                      cornerRadius: 0,
                                                      backgroundColor: ColorConfig.residentialStatusHolidayButtonBackgroundColor,
                                                      titleColor: ColorConfig.residentialStatusHolidayButtonTextColor,
                                                      manager: self)
    }
    
    func addResidentialStatusAustralianButton(){
        residentialStatusAustralianButton = Buttons.init(x: SizeConfig.residentialStatusAustralianButtonX,
                                                         y: SizeConfig.residentialStatusAustralianButtonY,
                                                         width: SizeConfig.residentialStatusAustralianButtonWidth,
                                                         height: SizeConfig.residentialStatusAustralianButtonHeight,
                                                         title: StringValue.residentialStatusAustralianButtonTextString,
                                                         fontSize: FontConfig.residentialStatusAustralianButtonTextFont,
                                                         cornerRadius: 0,
                                                         backgroundColor: ColorConfig.residentialStatusAustralianButtonBackgroundColor,
                                                         titleColor: ColorConfig.residentialStatusAustralianButtonTextColor,
                                                         manager: self)
        residentialStatusAustralianButton.roundedBottomButton()
    }
    
    
    func addPayFrequencyDefaultButton(){
        payFrequencyDefaultButton = Buttons.init(x: SizeConfig.payFrequencyDefaultButtonX,
                                                 y: SizeConfig.payFrequencyDefaultButtonY,
                                                 width: SizeConfig.payFrequencyDefaultButtonWidth,
                                                 height: SizeConfig.payFrequencyDefaultButtonHeight,
                                                 title: StringValue.payFrequencyDefaultButtonTextString,
                                                 fontSize: FontConfig.payFrequencyDefaultButtonTextFont,
                                                 cornerRadius: 4,
                                                 backgroundColor: ColorConfig.payFrequencyDefaultButtonBackgroundColor,
                                                 titleColor: ColorConfig.payFrequencyDefaultButtonTextColor,
                                                 manager: self)
    }
    
    func addPayFrequencyWeeklyButton(){
        payFrequencyWeeklyButton = Buttons.init(x: SizeConfig.payFrequencyWeeklyButtonX,
                                                y: SizeConfig.payFrequencyWeeklyButtonY,
                                                width: SizeConfig.payFrequencyWeeklyButtonWidth,
                                                height: SizeConfig.payFrequencyWeeklyButtonHeight,
                                                title: StringValue.payFrequencyWeeklyButtonTextString,
                                                fontSize: FontConfig.payFrequencyWeeklyButtonTextFont,
                                                cornerRadius: 0,
                                                backgroundColor: ColorConfig.payFrequencyWeeklyButtonBackgroundColor,
                                                titleColor: ColorConfig.payFrequencyWeeklyButtonTextColor,
                                                manager: self)
        
        payFrequencyWeeklyButton.roundedButton()
    }
    
    func addPayFrequencyFornightlyButton(){
        payFrequencyFornightlyButton = Buttons.init(x: SizeConfig.payFrequencyFornightlyButtonX,
                                                    y: SizeConfig.payFrequencyFornightlyButtonY,
                                                    width: SizeConfig.payFrequencyFornightlyButtonWidth,
                                                    height: SizeConfig.payFrequencyFornightlyButtonHeight,
                                                    title: StringValue.payFrequencyFornightlyButtonTextString,
                                                    fontSize: FontConfig.payFrequencyFornightlyButtonTextFont,
                                                    cornerRadius: 0,
                                                    backgroundColor: ColorConfig.payFrequencyFornightlyButtonBackgroundColor,
                                                    titleColor: ColorConfig.payFrequencyFornightlyButtonTextColor,
                                                    manager: self)
    }
    
    func addPayFrequencyMonthlyButton(){
        payFrequencyMonthlyButton = Buttons.init(x: SizeConfig.payFrequencyMonthlyButtonX,
                                                 y: SizeConfig.payFrequencyMonthlyButtonY,
                                                 width: SizeConfig.payFrequencyMonthlyButtonWidth,
                                                 height: SizeConfig.payFrequencyMonthlyButtonHeight,
                                                 title: StringValue.payFrequencyMonthlyButtonTextString,
                                                 fontSize: FontConfig.payFrequencyMonthlyButtonTextFont,
                                                 cornerRadius: 0,
                                                 backgroundColor: ColorConfig.payFrequencyMonthlyButtonBackgroundColor,
                                                 titleColor: ColorConfig.payFrequencyMonthlyButtonTextColor,
                                                 manager: self)
    }
    
    func addPayFrequencyYearlyButton(){
        payFrequencyYearlyButton = Buttons.init(x: SizeConfig.payFrequencyYearlyButtonX,
                                                y: SizeConfig.payFrequencyYearlyButtonY,
                                                width: SizeConfig.payFrequencyYearlyButtonWidth,
                                                height: SizeConfig.payFrequencyYearlyButtonHeight,
                                                title: StringValue.payFrequencyYearlyButtonTextString,
                                                fontSize: FontConfig.payFrequencyYearlyButtonTextFont,
                                                cornerRadius: 0,
                                                backgroundColor: ColorConfig.payFrequencyYearlyButtonBackgroundColor,
                                                titleColor: ColorConfig.payFrequencyYearlyButtonTextColor,
                                                manager: self)
        payFrequencyYearlyButton.roundedBottomButton()
    }
}

//M: set individual corner radius
extension UIButton{
    func roundedButton(){
        let maskPath1 = UIBezierPath(roundedRect: bounds,
                                     byRoundingCorners: [.topLeft , .topRight],
                                     cornerRadii: CGSize(width: 8, height: 8))
        let maskLayer1 = CAShapeLayer()
        maskLayer1.frame = bounds
        maskLayer1.path = maskPath1.cgPath
        layer.mask = maskLayer1
    }
    
    func roundedBottomButton(){
        let maskPath2 = UIBezierPath(roundedRect: bounds,
                                     byRoundingCorners: [.bottomLeft , .bottomRight],
                                     cornerRadii: CGSize(width: 8, height: 8))
        let maskLayer2 = CAShapeLayer()
        maskLayer2.frame = bounds
        maskLayer2.path = maskPath2.cgPath
        layer.mask = maskLayer2
    }
}
