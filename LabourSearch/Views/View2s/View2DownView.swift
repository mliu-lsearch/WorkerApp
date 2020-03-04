//
//  View2DownVoew.swift
//  LabourSearch
//
//  Created by LIN LIU on 27/11/19.
//  Copyright © 2019 LinLiu. All rights reserved.
//


import UIKit

class View2DownView: UIView, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    var bookMarkButton = UIButton()
    
    let bookMarkViewImage: UIImage? = UIImage (named: "bookmark")

    override init(frame: CGRect) {
        super.init(frame: frame)

        self.setViewFrameSize()

        self.defineBackgroundColor()
        
        self.addSubview(collectionView2)

        self.defineCollectionViewAndLayout()
        
        self.addBookMarkButton()
        
        self.addView2DownViewLabel1()
        
    }
    

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }


    func setViewFrameSize(){
        self.frame = CGRect(x: 0.0, y: SizeConfig2.view2UpperViewHeight, width: SizeConfig2.collectionViewDownWidth, height: SizeConfig2.collectionViewDownHeight - 100)
    }


    func defineBackgroundColor(){
        self.backgroundColor = ColorConfig.mainViewBackgroundColor
    }
    
    
    func addBookMarkButton(){
        bookMarkButton = Buttons.init(x: -5, y: 10, width: 85, height: 40, title: "", fontSize: 1, cornerRadius: 0, backgroundColor: .clear, titleColor: .black, manager: self)
        bookMarkButton.setImage(bookMarkViewImage, for: .normal)
        bookMarkButton.imageView?.contentMode = .scaleAspectFill
    }
    
    
    func addView2DownViewLabel1(){
        view2DownViewLabel1 = Labels.init(x: SizeConfig.mainWidth / 7 * 3 + 10, y: 10, width: 250, height: 40, cornerRadius: 0, backgroundColor: .clear, textAlignment: .left, textColor: .white, fitWidth: false, font: .boldSystemFont(ofSize: 20), text: "", manager: self)
    }
    
    
    func defineCollectionViewAndLayout(){
        collectionView2.delegate = self
        collectionView2.dataSource = self
        collectionView2.register(CollectionViewCell2.self, forCellWithReuseIdentifier: "cell2")
        collectionView2.register(SectionHeader2.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "header2")
    }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return calendarModel.resultForEventTypeAMPM.count
    }

    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! CollectionViewCell2

        cell.labelCell1.text = calendarModel.resultForEventTypeAMPM[indexPath.row]
    
        return cell
    
    }
     

    //M: size for the cell
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: SizeConfig2.collectionViewUpperWidth - 100, height: 50)
    }
    
    
    //M: set the margin for each section
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 40, left: 20, bottom: 10, right: 20)
    }
    
    
    //M: register a header
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "header2", for: indexPath) as! SectionHeader2
        headerView.labelHeader1.text = ""
        return headerView
    }
    
    
    //M: set the size of the header
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: SizeConfig2.collectionViewDownWidth, height: 10)
    }
}




//M: View class for cell
class CollectionViewCell2: UICollectionViewCell{

    var labelCell1 = UILabel()

    override init(frame: CGRect){
        super.init(frame: frame)
        addView2Label1()
    }


    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    
    func addView2Label1(){
        labelCell1 = Labels.init(x: 20, y: 0, width: SizeConfig2.collectionViewUpperWidth - 100, height: 50, cornerRadius: 0, backgroundColor: .clear, textAlignment: .left, textColor: .white, fitWidth: false, font: .systemFont(ofSize: 15), text: "no content", manager: self)
    }

  
}





//M: View class for header
class SectionHeader2: UICollectionReusableView {
    var labelHeader1 = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addLabelHeader1()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    func addLabelHeader1(){
        labelHeader1 = Labels.init(x: 10, y: 20, width: SizeConfig2.collectionViewDownWidth, height: 20, cornerRadius: 0, backgroundColor: .clear, textAlignment: .left, textColor: .white, fitWidth: false, font: .boldSystemFont(ofSize: 20), text: "no content", manager: self)
    }

    
}
