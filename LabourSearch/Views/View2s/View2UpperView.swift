//
//  View2.swift
//  LabourSearch
//
//  Created by LIN LIU on 16/11/19.
//  Copyright © 2019 LinLiu. All rights reserved.
//


import UIKit


class View2UpperView: UIView,  UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    var view2DownView = View2DownView()
    
    var currentDate = Date()
    
    var title = ""
    
    var weekDay1 = 0
    
    
 
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        self.setViewFrameSize()
        
        self.defineBackgroundColor()
        
        self.addSubview(collectionView1)
        
        self.defineCollectionViewAndLayout()
        
        self.setTitle()
    }

    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    func setViewFrameSize(){
        self.frame = CGRect(x: 0.0, y: 0.0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height / 10 * 6)
    }
    
    
    func defineBackgroundColor(){
        self.backgroundColor = ColorConfig.mainViewBackgroundColor
    }
    
    
    func defineCollectionViewAndLayout(){
        collectionView1.delegate = self
        collectionView1.dataSource = self
        collectionView1.register(CollectionViewCell1.self, forCellWithReuseIdentifier: "cell")
        collectionView1.register(SectionHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "header")
 
    }
    
    
    func setTitle(){
        title = currentDate.getTitleDateFC()
    }
    

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 12
    }
   

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 10, bottom: 40, right: 10)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "header", for: indexPath) as! SectionHeader
        headerView.labelHeader1.text = Date().addMonthFC(month: indexPath.section).getHeaderMonthTitleFC()
        headerView.labelHeader2.text = Date().addMonthFC(month: indexPath.section).getHeaderYearTitleFC()
        return headerView
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.size.width, height: 50)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Date().addMonthFC(month: section).getDaysInMonthFC()+Date().addMonthFC(month: section).startOfMonthFC().getDayOfWeekFC()! + 6
    }
    
 
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: SizeConfig2.cellWidth, height: SizeConfig2.cellHeight)
    }
    

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView1.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell1
        
        //M: inital setting here
        cell.contentView.layer.cornerRadius = cell.frame.width / 2
        cell.isUserInteractionEnabled = false
     
        

        if indexPath.row < 7 {
            if indexPath.row == 0 {
                cell.labelCell1.text  = "S"
            }
            else if indexPath.row == 1 {
                cell.labelCell1.text  = "M"
            }
            else if indexPath.row == 2 {
                cell.labelCell1.text  = "T"
            }
            else if indexPath.row == 3 {
                cell.labelCell1.text  = "W"
            }
            else if indexPath.row == 4 {
                cell.labelCell1.text  = "T"
            }
            else if indexPath.row == 5 {
                cell.labelCell1.text  = "F"
            }
            else if indexPath.row == 6 {
                cell.labelCell1.text  = "S"
            }
            cell.labelCell1.textColor = UIColor.lightGray
        }
            //M: for vacant date
        else if  indexPath.row > 6 && indexPath.row < Date().addMonthFC(month: indexPath.section).startOfMonthFC().getDayOfWeekFC()! + 6{
            cell.labelCell1.text = ""
        }
 
            //M: for normal dates in the month
        else{
            cell.labelCell1.text = "\((indexPath.row + 1) - (Date().addMonthFC(month: indexPath.section).startOfMonthFC().getDayOfWeekFC()! + 6))"
            cell.labelCell1.textColor = UIColor.white
            cell.isUserInteractionEnabled = true
 
            //M: for current data which needs to be colored red.
            if Date().addMonthFC(month: indexPath.section).getHeaderMonthTitleFC() == Date().endOfMonthFC().getHeaderMonthTitleFC(){
                
                //M:  check the current data to match the index
                if indexPath.row == 6 + Date().addMonthFC(month: indexPath.section).startOfMonthFC().getDayOfWeekFC()! - 1 + Int(currentDate.getJustDateFC())!{
                    cell.labelCell1.textColor = .red
                }
            }
        }
        
        
        //M: repaint the selector when scroll the view or reload the view
        if cell.isSelected == true {
              createSelector(rowCell: cell)
        }
        
        
        //M: repaint the selected cells when scroll the view or reload the view
        for (key,value) in indexPathSelectedColorDictionary {
            if let index = key{
                if let selectedCell = collectionView1.cellForItem(at: index){
                    selectedCell.contentView.backgroundColor = value
                }
            }
        }
        
        
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
      
        if let cell = collectionView.cellForItem(at: indexPath) as? CollectionViewCell1 {
          
            createSelector(rowCell: cell)
         
            //M: for data transmisstion
            selectedIndexFromCollectionView1 = indexPath
            

            //M; pass the selected date to the header of the collectionview2
            weekDay1 = (Int(cell.labelCell1.text!)! + Date().addMonthFC(month: indexPath.section).startOfMonthFC().getDayOfWeekFC()! - 1) % 7 - 1
            
            view2DownViewLabel1.text = Date().getWeekDay(number: weekDay1) + " " + Date().addMonthFC(month: selectedIndexFromCollectionView1!.section).getHeaderMonthTitleFC() + " " + cell.labelCell1.text!

            //M: pass the id to the model
            calendarModel.passIdForAM(String(Date().addMonthFC(month: indexPath.section).getHeaderYearTitleFC()) + "-" + String(Date().addMonthFC(month: indexPath.section).getHeaderMonthTitleInNumberFC()) + "-" + String(Date().getDateInNumberFC(number: cell.labelCell1.text!)) + "T00:00:00Z")
            
            calendarModel.passIdForPM(String(Date().addMonthFC(month: indexPath.section).getHeaderYearTitleFC()) + "-" + String(Date().addMonthFC(month: indexPath.section).getHeaderMonthTitleInNumberFC()) + "-" + String(Date().getDateInNumberFC(number: cell.labelCell1.text!)) + "T12:00:00Z")
            
            calendarModel.searchEngine()
            //M: need to dispatch asyc?
            collectionView2.reloadData()
            
        }
    }
    
    
    

    
    
}




//M: View class for header
class SectionHeader: UICollectionReusableView {
    var labelHeader1 = UILabel()
    var labelHeader2 = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addLabelHeader1()
        
        addLabelHeader2()
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    func addLabelHeader1(){
         labelHeader1 = Labels.init(x: 0, y: 0, width: 0, height: 0, cornerRadius: 0, backgroundColor: ColorConfig.mainViewBackgroundColor, textAlignment: .left, textColor: .white, fitWidth: false, font: .systemFont(ofSize: 28), text: "no content", manager: self)
        
        labelHeader1.sizeToFit()
        labelHeader1.translatesAutoresizingMaskIntoConstraints = false
        labelHeader1.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        labelHeader1.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        labelHeader1.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
    }

    
    func addLabelHeader2(){
        labelHeader2 = Labels.init(x: 0, y: 0, width: 0, height: 0, cornerRadius: 0, backgroundColor: ColorConfig.mainViewBackgroundColor, textAlignment: .left, textColor: .white, fitWidth: false, font: .systemFont(ofSize: 16), text: "no content", manager: self)
        
        labelHeader2.translatesAutoresizingMaskIntoConstraints = false
        labelHeader2.topAnchor.constraint(equalTo: self.topAnchor,constant: labelHeader1.frame.height).isActive = true
        labelHeader2.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        labelHeader2.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
    }
    
}




//M: View class for cell
class CollectionViewCell1: UICollectionViewCell{
    
    var labelCell1 = UILabel()
    
    

   
    override init(frame: CGRect){
        super.init(frame: frame)
        
        addView2Label1()
    
    }

    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        //M: color will be everywhere as cells are reused, so here we set all cell color to clear
        self.contentView.backgroundColor = .none
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    func addView2Label1(){
        labelCell1 = Labels.init(x: 0, y: 0, width: (SizeConfig2.collectionViewUpperWidth / 6.5) - 20, height: (SizeConfig2.collectionViewUpperWidth / 6.5) - 20, cornerRadius: ((SizeConfig2.collectionViewUpperWidth / 6.5) - 20) / 2, backgroundColor: .clear, textAlignment: .center, textColor: .white, fitWidth: false, font: .systemFont(ofSize: 16), text: "no content", manager: self)
        
    }
    
    
}

