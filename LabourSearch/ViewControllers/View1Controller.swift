//
//  View1Controller.swift
//  LabourSearch
//
//  Created by LIN LIU on 16/11/19.
//  Copyright © 2019 LinLiu. All rights reserved.
//



import UIKit

class View1Controller: UIViewController {
    var view1MainView  = View1()
    var selectionView = View1SelectionView()
    
    private var model = CalculationModel()
    let tap: UITapGestureRecognizer = UITapGestureRecognizer()
    
    var income: Double = 0.00
    var hourlyRate: Double = 0.0
    var shifts: Double = 0.0
    var frequency: Double = 0.0
    var superanuation: Double = 0.00
    var deductions: Double = 0.00
    var finalTax: Double = 0.0
    var TFNButtonValue: Bool = false
    var medicareLevyButtonValue: Bool = true
    var healthCoverButtonValue: Bool = false
    let formatter = DateFormatter()
    var overallHour: Double = 0.0
    
    
    var startTimeDatePicker = UIDatePicker()
    var endTimeDatePicker = UIDatePicker()
    
    
    
    
    override func loadView() {
        view = view1MainView
        view.addSubview(selectionView)
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.navigationItem.title = "Causal Earnings"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
                let deviceType = UIDevice.current.name
                print(deviceType)
                
                //M: default settings
                selectionView.residentialStatusValue.isUserInteractionEnabled = false
                
                selectionView.payFrequencyValue.isUserInteractionEnabled = false
                
                model.setOperand(0.0)
                
                model.setSecondOperand(0.0)
                
                model.setThirdOperand(selectionView.residentialStatusDefaultButton.currentTitle!)
                
                model.setFourOperand(selectionView.payFrequencyDefaultButton.currentTitle!)
                
                model.setCheckbox1(true)
                
                model.setCheckbox2(false)
                
                model.setCheckbox3(false)
                
                
                //M: other settings
                tap.addTarget(self, action: #selector(dismissKeyboard))
                view.addGestureRecognizer(tap)
                
                
                //M: add buttons
                //M:residentialStatus buttons
                for item in selectionView.residentialStatusButtons{
                    if item.currentTitle != nil{
                        item.isHidden = true
                        item.addTarget(self, action: #selector(onClickButtonsGetResidentialStatus), for: .touchUpInside)
                    }
                }
                selectionView.residentialStatusDefaultButton.addTarget(self, action: #selector(onClickResidentialStatusDefaultButton), for: .touchUpInside)
                
                
                //M:payfrequency buttons
                for item in selectionView.payFrequencyButtons{
                    if item.currentTitle != nil{
                        item.isHidden = true
                        item.addTarget(self, action: #selector(onClickButtonsGetPayFrequency), for: .touchUpInside)
                    }
                }
                selectionView.payFrequencyDefaultButton.addTarget(self, action: #selector(onClickPayFrequencyDefaultButton), for: .touchUpInside)
                
                
                //M:TFNButton
                selectionView.TFNButton.addTarget(self, action: #selector(onClickTFNButtons), for: .touchUpInside)
                
                
                //M:medicareLevyButton
                selectionView.medicareLevyButton.addTarget(self, action: #selector(onClickMedicareLevyButtons), for: .touchUpInside)
                model.setCheckbox2(medicareLevyButtonValue)
                
                
                //M:healthCoverButton
                selectionView.healthCoverButton.addTarget(self, action: #selector(onClickHealthCoverButtons), for: .touchUpInside)
                
                
                //M: check income value in incomeValue label
                selectionView.hourlyRateValue.addTarget(self, action: #selector(hourlyRateValueDidChange), for: UIControl.Event.editingChanged)
                selectionView.hourlyRateValue.addTarget(self, action: #selector(hourlyRateValueTouchDown), for: UIControl.Event.touchDown)
        
                //M: check income value in incomeValue label
                selectionView.shiftsValue.addTarget(self, action: #selector(shiftsValueDidChange), for: UIControl.Event.editingChanged)
                selectionView.shiftsValue.addTarget(self, action: #selector(shiftsValueTouchDown), for: UIControl.Event.touchDown)
        
        
                //M: check end time value
                formatter.dateFormat = "HH:mm"
                selectionView.endTimeValue.inputView = endTimeDatePicker
                endTimeDatePicker.datePickerMode = .dateAndTime
                endTimeDatePicker.addTarget(self, action: #selector(endTimeDatePickerValueDidChange), for: UIControl.Event.valueChanged)
                
                
                //M: check start time value
                selectionView.startTimeValue.inputView = startTimeDatePicker
                startTimeDatePicker.datePickerMode = .dateAndTime
                startTimeDatePicker.addTarget(self, action: #selector(startTimeDatePickerValueDidChange), for: UIControl.Event.valueChanged)
        
                
                //M: calculation button
                selectionView.calculateButton.addTarget(self, action: #selector(onClickCalculateButton), for: .touchUpInside)
            }
            
            
            
            @objc func onClickCalculateButton(sender: UIButton){
                income = shifts * hourlyRate * overallHour * frequency
                
                print("income")
                print(income)
                model.setOperand(income)
                superanuation = income * 0.095

                model.calculationEngine()
                print("final tax " + String(model.finalTax))
                view1MainView.resultLabel.text = String(format: "%.1f", income)
                selectionView.taxResultLabel.text = String(format: "%.1f", model.finalTax)
                selectionView.superResultLabel.text = String(format: "%.1f", superanuation)
               
            }
            
            
            @objc func onClickResidentialStatusDefaultButton(sender: UIButton){
                if sender.currentTitle == selectionView.residentialStatusDefaultButton.currentTitle{
                    for item in selectionView.residentialStatusButtons{
                        item.isHidden = !item.isHidden
                    }
                    for item in selectionView.payFrequencyButtons{
                        item.isHidden = true
                    }
                    selectionView.payFrequencyDefaultButton.isHidden = !selectionView.payFrequencyDefaultButton.isHidden
                }
            }
            
            
            @objc func onClickButtonsGetResidentialStatus(sender: UIButton){
                selectionView.residentialStatusDefaultButton.setTitle(sender.currentTitle, for: .normal)
                for item in selectionView.residentialStatusButtons{
                    item.isHidden = !item.isHidden
                }
                for item in selectionView.payFrequencyButtons{
                    item.isHidden = true
                }
                selectionView.payFrequencyDefaultButton.isHidden = !selectionView.payFrequencyDefaultButton.isHidden
                
                model.setThirdOperand(selectionView.residentialStatusDefaultButton.currentTitle!)
            }
            
            
            @objc func onClickPayFrequencyDefaultButton(sender: UIButton){
                if sender.currentTitle == selectionView.payFrequencyDefaultButton.currentTitle{
                    for item in selectionView.payFrequencyButtons{
                        item.isHidden = !item.isHidden
                    }
                }
            }
            
            
            @objc func onClickButtonsGetPayFrequency(sender: UIButton){
                selectionView.payFrequencyDefaultButton.setTitle(sender.currentTitle, for: .normal)
                for item in selectionView.payFrequencyButtons{
                    item.isHidden = !item.isHidden
                }
                if selectionView.payFrequencyDefaultButton.currentTitle == "Weekly"{
                    //print("weekly frequency")
                    frequency = 1
                    model.setFourOperand(selectionView.payFrequencyDefaultButton.currentTitle!)
                }
                else if selectionView.payFrequencyDefaultButton.currentTitle == "Fornightly"{
                    //print("Fornightly frequency")
                    //income = shifts * hourlyRate * overallHour * 2
                    frequency = 2
                    model.setFourOperand(selectionView.payFrequencyFornightlyButton.currentTitle!)
                    
                }
                else if selectionView.payFrequencyDefaultButton.currentTitle == "Monthly"{
                    //print("Monthlyly frequency")
                    //income = shifts * hourlyRate * overallHour * 4
                    frequency = 4 * 1.08
                    model.setFourOperand(selectionView.payFrequencyMonthlyButton.currentTitle!)
                }
                else if selectionView.payFrequencyDefaultButton.currentTitle == "Yearly"{
                    //print("Yearlyly frequency")
                    //income = shifts * hourlyRate * overallHour * 4 * 12
                    frequency = 4 * 12 * 1.73
                    model.setFourOperand(selectionView.payFrequencyYearlyButton.currentTitle!)
                }
                
                
            }
            
            
            @objc func  onClickTFNButtons(sender: UIButton){
                if sender.currentTitle  == StringValue.checkboxUncheckedTextString
                {
                    sender.setTitle(StringValue.checkboxCheckedTextString, for: .normal)
                    TFNButtonValue = true
                    model.setCheckbox1(TFNButtonValue)
                }
                else{
                    sender.setTitle(StringValue.checkboxUncheckedTextString, for: .normal)
                    TFNButtonValue = false
                    model.setCheckbox1(TFNButtonValue)
                }
            }
            
            
            @objc func onClickMedicareLevyButtons(sender: UIButton){
                if sender.currentTitle  == StringValue.checkboxUncheckedTextString
                {
                    sender.setTitle(StringValue.checkboxCheckedTextString, for: .normal)
                    medicareLevyButtonValue = true
                    model.setCheckbox2(medicareLevyButtonValue)
                }
                else{
                    sender.setTitle(StringValue.checkboxUncheckedTextString, for: .normal)
                    medicareLevyButtonValue = false
                    model.setCheckbox2(medicareLevyButtonValue)
                }
            }
            
            
            @objc func onClickHealthCoverButtons(sender: UIButton){
                if sender.currentTitle  == StringValue.checkboxUncheckedTextString
                {
                    sender.setTitle(StringValue.checkboxCheckedTextString, for: .normal)
                    healthCoverButtonValue = true
                    model.setCheckbox3(healthCoverButtonValue)
                }
                else{
                    sender.setTitle(StringValue.checkboxUncheckedTextString, for: .normal)
                    healthCoverButtonValue = false
                    model.setCheckbox3(healthCoverButtonValue)
                }
            }
            
            
            @objc func hourlyRateValueTouchDown(textField: UITextField) {
                if selectionView.hourlyRateValue.text! == StringValue.incomeValueTextString{
                    selectionView.hourlyRateValue.text = "0"
                }
            }
    
            @objc func shiftsValueDidChange(textField: UITextField) {
                if let rawIncomeValue: Double = Double(selectionView.shiftsValue.text!){
                    shifts = rawIncomeValue
                    print("shifts")
                    print(shifts)
                }
            }
    
            @objc func shiftsValueTouchDown(textField: UITextField) {
                print("touch down shifts")
            }
    
    
            
            @objc func hourlyRateValueDidChange(textField: UITextField) {
                if let rawIncomeValue: Double = Double(selectionView.hourlyRateValue.text!){
                    hourlyRate = rawIncomeValue
                    print("hourly rate")
                    print(hourlyRate)
                }
                
            }
    
            
            @objc func deductionsValueTouchDown(textField: UITextField) {
                if selectionView.endTimeValue.text! == StringValue.endTimeValueTextString{
                    selectionView.endTimeValue.text = "0"
                }
            }
            
            
            @objc func deductionsValueDidChange(textField: UITextField) {
                if let rawDeductionsValue: Double = Double(selectionView.endTimeValue.text!){
                    deductions = rawDeductionsValue
                    model.setSecondOperand(deductions)
                }
                else if selectionView.endTimeValue.text! == ""{
                    deductions = 0.0
                    model.setSecondOperand(deductions)
                }
                else{
                    if selectionView.endTimeValue.text!.first == "$"{
                        if let rawDeductionsValue: Double = Double(selectionView.endTimeValue.text!.dropFirst()){
                            deductions = rawDeductionsValue
                            model.setSecondOperand(deductions)
                        }else if selectionView.endTimeValue.text!.dropFirst() == ""{
                            deductions = 0.0
                            model.setSecondOperand(deductions)
                        }
                        else{
                            deductions = 0.0
                            model.setSecondOperand(deductions)
                            selectionView.endTimeValue.text = StringValue.endTimeValueTextString
                            let alert = UIAlertController(title: "Warning", message: "Please input the number", preferredStyle: .alert)
                            alert.addAction (UIAlertAction(title: "OK", style: .default, handler: nil))
                            self.present(alert, animated: true, completion: nil)
                        }
                    }
                    else{
                        deductions = 0.0
                        model.setSecondOperand(deductions)
                        selectionView.endTimeValue.text = StringValue.endTimeValueTextString
                        let alert = UIAlertController(title: "Warning", message: "Please input the number", preferredStyle: .alert)
                        alert.addAction (UIAlertAction(title: "OK", style: .default, handler: nil))
                        self.present(alert, animated: true, completion: nil)
                    }
                }
            }
    
            @objc func  endTimeDatePickerValueDidChange(datePicker: UIDatePicker) {
                selectionView.endTimeValue.text = formatter.string(from:endTimeDatePicker.date)
               
                
                let difference = Calendar.current.dateComponents([.hour, .minute], from: startTimeDatePicker.date, to: endTimeDatePicker.date)
                let minuteToHour = Double(difference.minute!) / 60.0
                let hour = Double(difference.hour!)
                overallHour = minuteToHour + hour
                selectionView.timeResultLabel.text = String(format:"%.1f", overallHour)
                //selectionView.timeDisplayLabel.text = "sth"
                print(overallHour)
            }
    
    
            @objc func startTimeDatePickerValueDidChange(datePicker: UIDatePicker){
                selectionView.startTimeValue.text = formatter.string(from:startTimeDatePicker.date)
            }

    
            
    
    
            
            //M: dismiss keyboard
            @objc func dismissKeyboard() {
                selectionView.hourlyRateValue.endEditing(true)
                selectionView.shiftsValue.endEditing(true)
                selectionView.startTimeValue.resignFirstResponder()
                selectionView.endTimeValue.resignFirstResponder()
                
                for item in selectionView.payFrequencyButtons{
                    item.isHidden = true
                }
                selectionView.residentialStatusDefaultButton.isHidden = false
                
                for item in selectionView.residentialStatusButtons{
                    item.isHidden = true
                }
                selectionView.payFrequencyDefaultButton.isHidden = false
            }
            
        }
        
        
