//
//  CalculationModel.swift
//  LabourSearch
//
//  Created by LIN LIU on 16/11/19.
//  Copyright © 2019 LinLiu. All rights reserved.
//


import Foundation
struct CalculationModel{
    private var accumulator: Double? // income
    private var secondAccumulator: Double? // deductiona
    private var thirdAccumulator: String? //residential status
    private var fourAccumulator: String? //payFrequency
    
    private var criteria1: Bool?
    private var criteria2: Bool?
    private var criteria3: Bool?
    
    var finalTax: Double = 0.0
    
    
    mutating func setOperand(_ operand: Double){
        accumulator = operand
        print("first operand: \(accumulator!)")
    }
    
    mutating func setSecondOperand(_ secondOperand: Double){
        secondAccumulator = secondOperand
        print("second operand: \(secondAccumulator!)")
    }
    
    mutating func setThirdOperand(_ thirdOperand: String){
        thirdAccumulator = thirdOperand
        print("third operand: \(thirdAccumulator!)")
    }
    
    mutating func setFourOperand(_ fourOperand: String){
        fourAccumulator = fourOperand
        print("four operand: \(fourAccumulator!)")
    }
    
    mutating func setCheckbox1(_ checkbox1: Bool){
        criteria1 = checkbox1
        print("checkbox1: \(criteria1!)")
    }
    
    mutating func setCheckbox2(_ checkbox2: Bool){
        criteria2 = checkbox2
        print("checkbox2: \(criteria2!)")
    }
    
    mutating func setCheckbox3(_ checkbox3: Bool){
        criteria3 = checkbox3
        print("checkbox3: \(criteria3!)")
    }
    
    //add 7 augements
    mutating func calculationEngine(){
        if thirdAccumulator == StringValue.residentialStatusAustralianButtonTextString{
            if criteria1 == true{
                if criteria2 == true{
                    if criteria3 == true{
                        if fourAccumulator == StringValue.payFrequencyWeeklyButtonTextString{
                            let taxAbleValue: Double = (accumulator! * 52 - secondAccumulator!)
                            if taxAbleValue >= 0 && taxAbleValue <= 18200
                            {
                                finalTax = 0 + taxAbleValue + taxAbleValue * 0.02 / 52
                                print("final tax \(finalTax)")
                            }
                            else if taxAbleValue >= 18201 && taxAbleValue <= 37000
                            {
                                finalTax = (taxAbleValue - 18200) * 0.19 / 52 + taxAbleValue * 0.02 / 52
                                print("final tax",finalTax)
                            }
                            else if taxAbleValue >= 37001 && taxAbleValue <= 90000
                            {
                                finalTax = ((taxAbleValue - 37000) * 0.325 + 3572) / 52 + taxAbleValue * 0.02 / 52
                                print("final tax",finalTax)
                            }
                            else if taxAbleValue >= 90001 && taxAbleValue <= 105000
                            {
                                finalTax = ((taxAbleValue - 90000) * 0.37 + 20797) / 52 + taxAbleValue * 0.02 / 52
                                print("final tax",finalTax)
                            }
                            else if taxAbleValue >= 105001 && taxAbleValue <= 140000
                            {
                                finalTax = ((taxAbleValue - 90000) * 0.37 + 20797) / 52 + taxAbleValue * 0.02 / 52
                                print("final tax",finalTax)
                            }
                            else if taxAbleValue >= 140001 && taxAbleValue <= 180001
                            {
                                finalTax = ((taxAbleValue - 90000) * 0.37 + 20797) / 52 + taxAbleValue * 0.02 / 52
                                print("final tax",finalTax)
                            }
                            else if taxAbleValue >= 180001
                            {
                                finalTax = ((taxAbleValue - 180000) * 0.45 + 54097) / 52 + taxAbleValue * 0.02 / 52
                                print("final tax",finalTax)
                            }
                        }
                        else if fourAccumulator == StringValue.payFrequencyFornightlyButtonTextString
                        {
                            let taxAbleValue: Double = (accumulator! * 26 - secondAccumulator!)  /// 26
                            if taxAbleValue >= 0 && taxAbleValue <= 18200
                            {
                                finalTax = 0 + taxAbleValue + taxAbleValue * 0.02 / 26
                            }
                            else if taxAbleValue >= 18201 && taxAbleValue <= 37000
                            {
                                finalTax = (taxAbleValue - 18200) * 0.19 / 26 + taxAbleValue * 0.02 / 26
                            }
                            else if taxAbleValue >= 37001 && taxAbleValue <= 90000
                            {
                                finalTax = ((taxAbleValue - 37000) * 0.325 + 3572) / 26 + taxAbleValue * 0.02 / 26
                            }
                            else if taxAbleValue >= 90001 && taxAbleValue <= 105000
                            {
                                finalTax = ((taxAbleValue - 90000) * 0.37 + 20797) / 26 + taxAbleValue * 0.02 / 26
                            }
                            else if taxAbleValue >= 105001 && taxAbleValue <= 140000
                            {
                                finalTax = ((taxAbleValue - 90000) * 0.37 + 20797) / 26 + taxAbleValue * 0.02 / 26
                            }
                            else if taxAbleValue >= 140001 && taxAbleValue <= 180001
                            {
                                finalTax = ((taxAbleValue - 90000) * 0.37 + 20797) / 26 + taxAbleValue * 0.02 / 26
                            }
                            else if taxAbleValue >= 180001
                            {
                                finalTax = ((taxAbleValue - 180000) * 0.45 + 54097) / 26 + taxAbleValue * 0.02 / 26
                            }
                            
                        }
                        else if fourAccumulator == StringValue.payFrequencyMonthlyButtonTextString
                        {
                            let taxAbleValue: Double = (accumulator! * 12 - secondAccumulator!) /// 12
                            if taxAbleValue >= 0 && taxAbleValue <= 18200
                            {
                                finalTax = 0 + taxAbleValue + taxAbleValue * 0.02 / 12
                            }
                            else if taxAbleValue >= 18201 && taxAbleValue <= 37000
                            {
                                finalTax = (taxAbleValue - 18200) * 0.19 / 12 + taxAbleValue * 0.02 / 12
                            }
                            else if taxAbleValue >= 37001 && taxAbleValue <= 90000
                            {
                                finalTax = ((taxAbleValue - 37000) * 0.325 + 3572) / 12 + taxAbleValue * 0.02 / 12
                            }
                            else if taxAbleValue >= 90001 && taxAbleValue <= 105000
                            {
                                finalTax = ((taxAbleValue - 90000) * 0.37 + 20797) / 12 + taxAbleValue * 0.02 / 12
                            }
                            else if taxAbleValue >= 105001 && taxAbleValue <= 140000
                            {
                                finalTax = ((taxAbleValue - 90000) * 0.37 + 20797) / 12 + taxAbleValue * 0.02 / 12
                            }
                            else if taxAbleValue >= 140001 && taxAbleValue <= 180001
                            {
                                finalTax = ((taxAbleValue - 90000) * 0.37 + 20797) / 12 + taxAbleValue * 0.02 / 12
                            }
                            else if taxAbleValue >= 180001
                            {
                                finalTax = ((taxAbleValue - 180000) * 0.45 + 54097) / 12 + taxAbleValue * 0.02 / 12
                            }
                        }
                        else if fourAccumulator == StringValue.payFrequencyYearlyButtonTextString
                        {
                            let taxAbleValue: Double = accumulator! - secondAccumulator!
                            if taxAbleValue >= 0 && taxAbleValue <= 18200
                            {
                                finalTax = 0 + taxAbleValue + taxAbleValue * 0.02
                            }
                            else if taxAbleValue >= 18201 && taxAbleValue <= 37000
                            {
                                finalTax = (taxAbleValue - 18200) * 0.19 + taxAbleValue * 0.02
                            }
                            else if taxAbleValue >= 37001 && taxAbleValue <= 90000
                            {
                                finalTax = ((taxAbleValue - 37000) * 0.325 + 3572) + taxAbleValue * 0.02
                            }
                            else if taxAbleValue >= 90001 && taxAbleValue <= 105000
                            {
                                finalTax = ((taxAbleValue - 90000) * 0.37 + 20797) + taxAbleValue * 0.02
                            }
                            else if taxAbleValue >= 105001 && taxAbleValue <= 140000
                            {
                                finalTax = ((taxAbleValue - 90000) * 0.37 + 20797) + taxAbleValue * 0.02
                            }
                            else if taxAbleValue >= 140001 && taxAbleValue <= 180001
                            {
                                finalTax = ((taxAbleValue - 90000) * 0.37 + 20797) + taxAbleValue * 0.02
                            }
                            else if taxAbleValue >= 180001
                            {
                                finalTax = ((taxAbleValue - 180000) * 0.45 + 54097) + taxAbleValue * 0.02
                            }
                        }
                    }
                    else if criteria3 == false
                    {
                        //M: time to calculate duration
                        if fourAccumulator == StringValue.payFrequencyWeeklyButtonTextString
                        {
                            let taxAbleValue: Double = (accumulator! * 52 - secondAccumulator!)  /// 52
                            if taxAbleValue >= 0 && taxAbleValue <= 18200
                            {
                                finalTax = 0 + taxAbleValue + taxAbleValue * 0.02 / 52
                            }
                            else if taxAbleValue >= 18201 && taxAbleValue <= 37000
                            {
                                finalTax = (taxAbleValue - 18200) * 0.19 / 52 + taxAbleValue * 0.02 / 52
                            }
                            else if taxAbleValue >= 37001 && taxAbleValue <= 90000
                            {
                                finalTax = ((taxAbleValue - 37000) * 0.325 + 3572) / 52 + taxAbleValue * 0.02 / 52
                            }
                            else if taxAbleValue >= 90001 && taxAbleValue <= 105000
                            {
                                finalTax = ((taxAbleValue - 90000) * 0.37 + 20797) / 52 + taxAbleValue * 0.02 / 52 + taxAbleValue * 0.01 / 52
                            }
                            else if taxAbleValue >= 105001 && taxAbleValue <= 140000
                            {
                                finalTax = ((taxAbleValue - 90000) * 0.37 + 20797) / 52 + taxAbleValue * 0.02 / 52 + taxAbleValue * 0.0125 / 52
                            }
                            else if taxAbleValue >= 140001 && taxAbleValue <= 180001
                            {
                                finalTax = ((taxAbleValue - 90000) * 0.37 + 20797) / 52 + taxAbleValue * 0.02 / 52 + taxAbleValue * 0.015 / 52
                            }
                            else if taxAbleValue >= 180001
                            {
                                finalTax = ((taxAbleValue - 180000) * 0.45 + 54097) / 52 + taxAbleValue * 0.02 / 52 + taxAbleValue * 0.015 / 52
                            }
                            
                        }
                        else if fourAccumulator == StringValue.payFrequencyFornightlyButtonTextString
                        {
                            let taxAbleValue: Double = (accumulator! * 26 - secondAccumulator!)  /// 26
                            if taxAbleValue >= 0 && taxAbleValue <= 18200
                            {
                                finalTax = 0 + taxAbleValue + taxAbleValue * 0.02 / 26
                            }
                            else if taxAbleValue >= 18201 && taxAbleValue <= 37000
                            {
                                finalTax = (taxAbleValue - 18200) * 0.19 / 26 + taxAbleValue * 0.02 / 26
                            }
                            else if taxAbleValue >= 37001 && taxAbleValue <= 90000
                            {
                                finalTax = ((taxAbleValue - 37000) * 0.325 + 3572) / 26 + taxAbleValue * 0.02 / 26
                            }
                            else if taxAbleValue >= 90001 && taxAbleValue <= 105000
                            {
                                finalTax = ((taxAbleValue - 90000) * 0.37 + 20797) / 26 + taxAbleValue * 0.02 / 26 + taxAbleValue * 0.01 / 26
                            }
                            else if taxAbleValue >= 105001 && taxAbleValue <= 140000
                            {
                                finalTax = ((taxAbleValue - 90000) * 0.37 + 20797) / 26 + taxAbleValue * 0.02 / 26 + taxAbleValue * 0.0125 / 26
                            }
                            else if taxAbleValue >= 140001 && taxAbleValue <= 180001
                            {
                                finalTax = ((taxAbleValue - 90000) * 0.37 + 20797) / 26 + taxAbleValue * 0.02 / 26 + taxAbleValue * 0.015 / 26
                            }
                            else if taxAbleValue >= 180001
                            {
                                finalTax = ((taxAbleValue - 180000) * 0.45 + 54097) / 26 + taxAbleValue * 0.02 / 26 + taxAbleValue * 0.015 / 26
                            }
                            
                        }
                        else if fourAccumulator == StringValue.payFrequencyMonthlyButtonTextString
                        {
                            let taxAbleValue: Double = (accumulator! * 12 - secondAccumulator!) /// 12
                            if taxAbleValue >= 0 && taxAbleValue <= 18200
                            {
                                finalTax = 0 + taxAbleValue + taxAbleValue * 0.02 / 12
                            }
                            else if taxAbleValue >= 18201 && taxAbleValue <= 37000
                            {
                                finalTax = (taxAbleValue - 18200) * 0.19 / 12 + taxAbleValue * 0.02 / 12
                            }
                            else if taxAbleValue >= 37001 && taxAbleValue <= 90000
                            {
                                finalTax = ((taxAbleValue - 37000) * 0.325 + 3572) / 12 + taxAbleValue * 0.02 / 12
                            }
                            else if taxAbleValue >= 90001 && taxAbleValue <= 105000
                            {
                                finalTax = ((taxAbleValue - 90000) * 0.37 + 20797) / 12 + taxAbleValue * 0.02 / 12 + taxAbleValue * 0.01 / 12
                            }
                            else if taxAbleValue >= 105001 && taxAbleValue <= 140000
                            {
                                finalTax = ((taxAbleValue - 90000) * 0.37 + 20797) / 12 + taxAbleValue * 0.02 / 12 + taxAbleValue * 0.0125 / 12
                            }
                            else if taxAbleValue >= 140001 && taxAbleValue <= 180001
                            {
                                finalTax = ((taxAbleValue - 90000) * 0.37 + 20797) / 12 + taxAbleValue * 0.02 / 12 + taxAbleValue * 0.015 / 12
                            }
                            else if taxAbleValue >= 180001
                            {
                                finalTax = ((taxAbleValue - 180000) * 0.45 + 54097) / 12 + taxAbleValue * 0.02 / 12 + taxAbleValue * 0.015 / 12
                            }
                        }
                        else if fourAccumulator == StringValue.payFrequencyYearlyButtonTextString
                        {
                            let taxAbleValue: Double = accumulator! - secondAccumulator!
                            if taxAbleValue >= 0 && taxAbleValue <= 18200
                            {
                                finalTax = 0 + taxAbleValue + taxAbleValue * 0.02
                            }
                            else if taxAbleValue >= 18201 && taxAbleValue <= 37000
                            {
                                finalTax = (taxAbleValue - 18200) * 0.19 + taxAbleValue * 0.02
                            }
                            else if taxAbleValue >= 37001 && taxAbleValue <= 90000
                            {
                                finalTax = ((taxAbleValue - 37000) * 0.325 + 3572) + taxAbleValue * 0.02
                            }
                            else if taxAbleValue >= 90001 && taxAbleValue <= 105000
                            {
                                finalTax = ((taxAbleValue - 90000) * 0.37 + 20797) + taxAbleValue * 0.02 + taxAbleValue * 0.01
                            }
                            else if taxAbleValue >= 105001 && taxAbleValue <= 140000
                            {
                                finalTax = ((taxAbleValue - 90000) * 0.37 + 20797) + taxAbleValue * 0.02 + taxAbleValue * 0.0125
                            }
                            else if taxAbleValue >= 140001 && taxAbleValue <= 180001
                            {
                                finalTax = ((taxAbleValue - 90000) * 0.37 + 20797) + taxAbleValue * 0.02 + taxAbleValue * 0.015
                            }
                            else if taxAbleValue >= 180001
                            {
                                finalTax = ((taxAbleValue - 180000) * 0.45 + 54097) + taxAbleValue * 0.02 + taxAbleValue * 0.015
                            }
                        }
                    }
                }
                else if criteria2 == false
                {
                    //M: time to calculate duration
                    if fourAccumulator == StringValue.payFrequencyWeeklyButtonTextString
                    {
                        let taxAbleValue: Double = (accumulator! * 52 - secondAccumulator!)  /// 52
                        if taxAbleValue >= 0 && taxAbleValue <= 18200
                        {
                            finalTax = 0
                        }
                        else if taxAbleValue >= 18201 && taxAbleValue <= 37000
                        {
                            finalTax = (taxAbleValue - 18200) * 0.19 / 52
                        }
                        else if taxAbleValue >= 37001 && taxAbleValue <= 90000
                        {
                            finalTax = ((taxAbleValue - 37000) * 0.325 + 3572) / 52
                        }
                        else if taxAbleValue >= 90001 && taxAbleValue <= 180000
                        {
                            finalTax = ((taxAbleValue - 90000) * 0.37 + 20797) / 52
                        }
                        else if taxAbleValue >= 180001
                        {
                            finalTax = ((taxAbleValue - 180000) * 0.45 + 54097) / 52
                        }
                        
                    }
                    else if fourAccumulator == StringValue.payFrequencyFornightlyButtonTextString
                    {
                        let taxAbleValue: Double = (accumulator! * 26 - secondAccumulator!)  /// 26
                        if taxAbleValue >= 0 && taxAbleValue <= 18200
                        {
                            finalTax = 0
                        }
                        else if taxAbleValue >= 18201 && taxAbleValue <= 37000
                        {
                            finalTax = (taxAbleValue - 18200) * 0.19 / 26
                        }
                        else if taxAbleValue >= 37001 && taxAbleValue <= 90000
                        {
                            finalTax = ((taxAbleValue - 37000) * 0.325 + 3572) / 26
                        }
                        else if taxAbleValue >= 90001 && taxAbleValue <= 180000
                        {
                            finalTax = ((taxAbleValue - 90000) * 0.37 + 20797) / 26
                        }
                        else if taxAbleValue >= 180001
                        {
                            finalTax = ((taxAbleValue - 180000) * 0.45 + 54097) / 26
                        }
                        
                    }
                    else if fourAccumulator == StringValue.payFrequencyMonthlyButtonTextString
                    {
                        let taxAbleValue: Double = (accumulator! * 12 - secondAccumulator!) /// 12
                        if taxAbleValue >= 0 && taxAbleValue <= 18200
                        {
                            finalTax = 0
                        }
                        else if taxAbleValue >= 18201 && taxAbleValue <= 37000
                        {
                            finalTax = (taxAbleValue - 18200) * 0.19 / 12
                        }
                        else if taxAbleValue >= 37001 && taxAbleValue <= 90000
                        {
                            finalTax = ((taxAbleValue - 37000) * 0.325 + 3572) / 12
                        }
                        else if taxAbleValue >= 90001 && taxAbleValue <= 180000
                        {
                            finalTax = ((taxAbleValue - 90000) * 0.37 + 20797) / 12
                        }
                        else if taxAbleValue >= 180001
                        {
                            finalTax = ((taxAbleValue - 180000) * 0.45 + 54097) / 12
                        }
                    }
                    else if fourAccumulator == StringValue.payFrequencyYearlyButtonTextString
                    {
                        let taxAbleValue: Double = accumulator! - secondAccumulator!
                        if taxAbleValue >= 0 && taxAbleValue <= 18200
                        {
                            finalTax = 0
                        }
                        else if taxAbleValue >= 18201 && taxAbleValue <= 37000
                        {
                            finalTax = (taxAbleValue - 18200) * 0.19
                        }
                        else if taxAbleValue >= 37001 && taxAbleValue <= 90000
                        {
                            finalTax = ((taxAbleValue - 37000) * 0.325 + 3572)
                        }
                        else if taxAbleValue >= 90001 && taxAbleValue <= 180000
                        {
                            finalTax = ((taxAbleValue - 90000) * 0.37 + 20797)
                        }
                        else if taxAbleValue >= 180001
                        {
                            finalTax = ((taxAbleValue - 180000) * 0.45 + 54097)
                        }
                    }
                }
            }
                
                //M: no TFN, deduction should not influence
                //M: finished!!!
            else if criteria1 == false
            {
                print("You unclicked checkBox1")
                secondAccumulator! = 0
                let taxAbleValue: Double = accumulator! - secondAccumulator!
                finalTax = taxAbleValue * 0.47
            }
            
        }
            
        else if thirdAccumulator == StringValue.residentialStatusForeignButtonTextString
        {
            print("You selected VISA2")
            
            if criteria1 == true
            {
                print("You clicked checkBox1")
                if fourAccumulator == StringValue.payFrequencyWeeklyButtonTextString
                {
                    let taxAbleValue: Double = (accumulator! * 52 - secondAccumulator!) /// 52
                    
                    if taxAbleValue >= 0 && taxAbleValue <= 87000
                    {
                        finalTax = taxAbleValue * 0.325 / 52
                    }
                    else if taxAbleValue >= 87001 && taxAbleValue <= 180000
                    {
                        finalTax = ((taxAbleValue - 87000) * 0.37 + 28275) / 52
                    }
                    else if taxAbleValue >= 180001
                    {
                        finalTax = ((taxAbleValue - 180000) * 0.45 + 62685) / 52
                    }
                }
                    
                    
                else if fourAccumulator == StringValue.payFrequencyFornightlyButtonTextString
                {
                    let taxAbleValue: Double = (accumulator! * 26 - secondAccumulator!) /// 26
                    
                    if taxAbleValue >= 0 && taxAbleValue <= 87000
                    {
                        finalTax = taxAbleValue * 0.325 / 26
                    }
                    else if taxAbleValue >= 87001 && taxAbleValue <= 180000
                    {
                        finalTax = ((taxAbleValue - 87000) * 0.37 + 28275) / 26
                    }
                    else if taxAbleValue >= 180001
                    {
                        finalTax = ((taxAbleValue - 180000) * 0.45 + 62685) / 26
                    }
                }
                else if fourAccumulator == StringValue.payFrequencyMonthlyButtonTextString
                {
                    let taxAbleValue: Double = (accumulator! * 12 - secondAccumulator!) /// 12
                    
                    if taxAbleValue >= 0 && taxAbleValue <= 87000
                    {
                        finalTax = taxAbleValue * 0.325 / 12
                    }
                    else if taxAbleValue >= 87001 && taxAbleValue <= 180000
                    {
                        finalTax = ((taxAbleValue - 87000) * 0.37 + 28275) / 12
                    }
                    else if taxAbleValue >= 180001
                    {
                        finalTax = ((taxAbleValue - 180000) * 0.45 + 62685) / 12
                    }
                }
                else if fourAccumulator == StringValue.payFrequencyYearlyButtonTextString
                {
                    let taxAbleValue: Double = accumulator! - secondAccumulator!
                    if taxAbleValue >= 0 && taxAbleValue <= 87000
                    {
                        finalTax = taxAbleValue * 0.325
                    }
                    else if taxAbleValue >= 87001 && taxAbleValue <= 180000
                    {
                        finalTax = (taxAbleValue - 87000) * 0.37 + 28275
                    }
                    else if taxAbleValue >= 180001
                    {
                        finalTax = ((taxAbleValue - 180000) * 0.45 + 62685)
                    }
                }
            }
                //M: user doesnt have TFN
                //M: finished!!!
            else if criteria1 == false
            {
                print("You unclicked checkBox1")
                secondAccumulator! = 0
                let taxAbleValue: Double = accumulator! - secondAccumulator!
                finalTax = taxAbleValue * 0.45
            }
        }
        else if thirdAccumulator == StringValue.residentialStatusHolidayButtonTextString
        {
            print("You selected VISA3")
            
            if  criteria1 == true
            {
                print("You clicked checkBox1")
                if fourAccumulator == StringValue.payFrequencyWeeklyButtonTextString
                {
                    let taxAbleValue: Double = (accumulator! * 52 - secondAccumulator!) /// 52
                    
                    if taxAbleValue >= 0 && taxAbleValue <= 37000
                    {
                        finalTax = taxAbleValue * 0.15 / 52
                    }
                    else if taxAbleValue >= 37001 && taxAbleValue <= 90000
                    {
                        finalTax = ((taxAbleValue - 37000) * 0.325 + 5550) / 52
                    }
                    else if taxAbleValue >= 90001 && taxAbleValue <= 180000
                    {
                        finalTax = ((taxAbleValue - 90000) * 0.37 + 22775) / 52
                    }
                    else if taxAbleValue >= 180001
                    {
                        finalTax = ((taxAbleValue - 180000) * 0.45 + 56075) / 52
                    }
                }
                else if fourAccumulator == StringValue.payFrequencyFornightlyButtonTextString
                {
                    let taxAbleValue: Double = (accumulator! * 26 - secondAccumulator!) /// 26
                    
                    if taxAbleValue >= 0 && taxAbleValue <= 37000
                    {
                        finalTax = taxAbleValue * 0.15 / 26
                    }
                    else if taxAbleValue >= 37001 && taxAbleValue <= 90000
                    {
                        finalTax = ((taxAbleValue - 37000) * 0.325 + 5550) / 26
                    }
                    else if taxAbleValue >= 90001 && taxAbleValue <= 180000
                    {
                        finalTax = ((taxAbleValue - 90000) * 0.37 + 22775) / 26
                    }
                    else if taxAbleValue >= 180001
                    {
                        finalTax = ((taxAbleValue - 180000) * 0.45 + 56075) / 26
                    }
                }
                else if fourAccumulator == StringValue.payFrequencyMonthlyButtonTextString
                {
                    let taxAbleValue: Double = (accumulator! * 12 - secondAccumulator!) /// 82812
                    
                    if taxAbleValue >= 0 && taxAbleValue <= 37000
                    {
                        finalTax = taxAbleValue * 0.15 / 12
                    }
                    else if taxAbleValue >= 37001 && taxAbleValue <= 90000
                    {
                        finalTax = ((taxAbleValue - 37000) * 0.325 + 5550) / 12
                    }
                    else if taxAbleValue >= 90001 && taxAbleValue <= 180000
                    {
                        finalTax = ((taxAbleValue - 90000) * 0.37 + 22775) / 12
                    }
                    else if taxAbleValue >= 180001
                    {
                        finalTax = ((taxAbleValue - 180000) * 0.45 + 56075) / 12
                    }
                }
                else if fourAccumulator == StringValue.payFrequencyYearlyButtonTextString
                {
                    let taxAbleValue: Double = accumulator! - secondAccumulator!
                    
                    if taxAbleValue >= 0 && taxAbleValue <= 37000
                    {
                        finalTax = taxAbleValue * 0.15
                    }
                    else if taxAbleValue >= 37001 && taxAbleValue <= 90000
                    {
                        finalTax = (taxAbleValue - 37000) * 0.325 + 5550
                    }
                    else if taxAbleValue >= 90001 && taxAbleValue <= 180000
                    {
                        finalTax = ((taxAbleValue - 90000) * 0.37 + 22775)
                    }
                    else if taxAbleValue >= 180001
                    {
                        finalTax = ((taxAbleValue - 180000) * 0.45 + 56075)
                    }
                }
            }
                //M: user doesnt have TFN
                //M: finished!!!
            else if criteria1 == false
            {
                print("You unclicked checkBox1")
                secondAccumulator! = 0
                let taxAbleValue: Double = accumulator! - secondAccumulator!
                finalTax = taxAbleValue * 0.45
            }
        }
        
        
    }
}
