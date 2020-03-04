//
//  View2SideDrawerView.swift
//  LabourSearch
//
//  Created by LIN LIU on 23/12/19.
//  Copyright © 2019 LinLiu. All rights reserved.
//


import UIKit

class View2SideDrawerView: UIView, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    
    //M: these will be in config files
    let weatherEmoji = ["☀️","🌤","⛅️","🌥","☁️","🌦","🌧","⛈","🌩","🌨","❄️","🌙","🌫","☀️","🌤","⛅️","🌥","☁️","🌦","🌧","⛈","🌩","🌨","❄️","🌙","🌫"]
    
    let selectColor = [ColorConfig.selectorColorWhite,ColorConfig.selectorColorCyan,ColorConfig.selectorColorBronze,ColorConfig.selectorColorCrimson,ColorConfig.selectorColorLightPink,ColorConfig.selectorColorMintGreen,ColorConfig.selectorColorTurqupise,ColorConfig.selectorColorAquamarine,ColorConfig.selectorColorGrassGreen,ColorConfig.selectorColorPastelOrange]
    
   
    
    //var selectedIndexFromCollectionView3: IndexPath? = nil


    override init(frame: CGRect) {
        super.init(frame: frame)

        self.setViewFrameSize()

        self.defineBackgroundColor()
        
        self.addSubview(collectionView3)
        
        self.addSubview(collectionView4)

        self.defineCollectionViewAndLayout()
        
        self.otherSettingsForCollectionViews()
        
    }
    

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    

    func setViewFrameSize(){
        //M: the frame of this view which should be the same frame of collectionView3
        self.frame = CGRect(x: -SizeConfig2.collectionViewDownWidth, y: SizeConfig2.view2UpperViewHeight + 55, width: SizeConfig2.collectionViewDownWidth, height: SizeConfig2.collectionViewDownHeight - 100)
    }


    func defineBackgroundColor(){
        self.backgroundColor = ColorConfig.lightMainViewBackgroundColor
    }
    
    
    func defineCollectionViewAndLayout(){
        collectionView3.delegate = self
        collectionView3.dataSource = self
        collectionView3.register(CollectionViewCell3.self, forCellWithReuseIdentifier: "cell3")
        
        collectionView4.delegate = self
        collectionView4.dataSource = self
        collectionView4.register(CollectionViewCell4.self, forCellWithReuseIdentifier: "cell4")
    }
    
    
    func otherSettingsForCollectionViews(){
        collectionView3.showsHorizontalScrollIndicator = false
        collectionView4.showsHorizontalScrollIndicator = false
    }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        if collectionView == collectionView3 {
            return 1
        }
        else {
            return 1
        }
    }


    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        if collectionView == collectionView3 {
            return  selectColor.count
        }
        else {
            return weatherEmoji.count
        }
    }

    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == collectionView3 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell3", for: indexPath) as! CollectionViewCell3
            cell.labelCell1.backgroundColor = selectColor[indexPath.row]
            return cell
        }
        else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell4", for: indexPath) as! CollectionViewCell4
            cell.labelCell1.text = weatherEmoji[indexPath.row]
            return cell
        }
        
    }
    

    //M: size for the cell
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 70, height: 70)
        
    }
    
    
    //M: set the margin for each section
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 20)
        
    }
    
    
    //M: controllers for collection views
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == collectionView3 {
            if let cell = collectionView.cellForItem(at: indexPath) as? CollectionViewCell3 {
               UIView.animate(withDuration: 0.3,
               animations: {
                   cell.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
               },completion:  nil)
                
                
                //M: change the color of the selector when user chooses the color from the sidedrawerview.
                if let selectedIndex2 = selectedIndexFromCollectionView1{
                    if let upperViewCell = collectionView1.cellForItem(at: selectedIndex2) as? CollectionViewCell1{
                        
                        selectedBGColor = selectColor[indexPath.row]
                        
                        indexPathSelectedColorDictionary[selectedIndex2] = selectedBGColor
                    
                        upperViewCell.contentView.backgroundColor = selectedBGColor
                    }
                }
            }
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        if collectionView == collectionView3 {
            if let cell = collectionView.cellForItem(at: indexPath) as? CollectionViewCell3 {
               UIView.animate(withDuration: 0.3,
               animations: {
                   cell.transform = CGAffineTransform(scaleX: 1, y: 1)
               },completion:  nil)
            }
        }
    }

}




//M: View class for cell
class CollectionViewCell3: UICollectionViewCell{

    var labelCell1 = UILabel()

    override init(frame: CGRect){
        super.init(frame: frame)
        addView2Label1()
    }


    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    
    func addView2Label1(){
        labelCell1 = Labels.init(x: 10, y: 10, width: 50, height: 50, cornerRadius: 25, backgroundColor: .clear, textAlignment: .center, textColor: .white, fitWidth: true, font: .systemFont(ofSize: 40), text: "", manager: self)
    }
}




class CollectionViewCell4: UICollectionViewCell{

    var labelCell1 = UILabel()

    override init(frame: CGRect){
        super.init(frame: frame)
        addView2Label1()
    }


    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    
    func addView2Label1(){
        labelCell1 = Labels.init(x: 10, y: 10, width: 50, height: 50, cornerRadius: 30, backgroundColor: .clear, textAlignment: .center, textColor: .white, fitWidth: true, font: .systemFont(ofSize: 40), text: "", manager: self)
    }
}
