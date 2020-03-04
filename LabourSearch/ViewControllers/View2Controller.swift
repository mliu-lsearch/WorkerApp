//
//  View2Controller.swift
//  LabourSearch
//
//  Created by LIN LIU on 16/11/19.
//  Copyright © 2019 LinLiu. All rights reserved.
//



import UIKit

class View2Controller: UIViewController {
    var view2 = View2()
    var view2UpperView = View2UpperView()
    var view2DownView = View2DownView()
    var view2SideDrawerView = View2SideDrawerView()

    
    var transition1 = Transitions()
    
    var count: Int = 1
    
    
    override func loadView() {
        view = view2
        view.addSubview(view2UpperView)
        view.addSubview(view2DownView)
        view.addSubview(view2SideDrawerView)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        view2DownView.bookMarkButton.addTarget(self, action: #selector(onClickBookMarkButton), for: .touchUpInside)
    
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        self.tabBarController?.navigationItem.title = view2UpperView.title
    }
    
    
    
    @objc func onClickBookMarkButton(_ sender:UISwitch){
        
        if count % 2 != 0{
            UIView.animate(withDuration: 0.4, animations: {
               self.view2SideDrawerView.transform = self.view2SideDrawerView.transform.translatedBy(x: SizeConfig2.collectionViewDownWidth , y: 0.0)
            })
            
            count = count + 1
        }
        else{
            UIView.animate(withDuration: 0.4, animations: {
                            self.view2SideDrawerView.transform = self.view2SideDrawerView.transform.translatedBy(x:  -SizeConfig2.collectionViewDownWidth , y: 0.0)
                           collectionView3.reloadData()
            })
            
            count = count + 1
        }
    }
    
    
  
}
