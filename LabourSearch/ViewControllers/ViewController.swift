//
//  ViewController.swift
//  LabourSearch
//
//  Created by LIN LIU on 16/11/19.
//  Copyright © 2019 LinLiu. All rights reserved.
//

import UIKit


//class View1Controller: UIViewController {
//    var view1 = View1()
//    var transition1 = Transitions()
//
//
//    let leftBarButtonItem: UIBarButtonItem = {
//        let barButtonItem = UIBarButtonItem(title: "to 1", style: .plain, target: self, action: nil)
//        barButtonItem.tintColor = UIColor.green
//        return barButtonItem
//    }()
//
//
//    override func loadView() {
//        view = view1
//    }
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//
//
//        //M: settings for navigation bar
//        self.title = "Labour Search"
//
//        self.navigationItem.backBarButtonItem = leftBarButtonItem
//
//        SizeConfig.navigationControllerY = (self.navigationController?.navigationBar.frame.height)!
//
//    }
//}


import UIKit

class ViewController: UITabBarController {
    var view1 = View1()
    
//    let leftBarButtonItem: UIBarButtonItem = {
//        let barButtonItem = UIBarButtonItem(title: "to 4", style: .plain, target: self, action: nil)
//        barButtonItem.tintColor = UIColor.gray
//        return barButtonItem
//    }()
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        
        self.addTarBar()
        
        //M: setting for navigation bar
        self.title = "Casual Earnings"
        
        
        UINavigationBar.appearance().barTintColor = ColorConfig.selectionViewBackgroundColor
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]

        UINavigationBar.appearance().isTranslucent = false
        self.extendedLayoutIncludesOpaqueBars = true
        
        //M: do the network service after launching the app
        //FetchJsons.getJsonDataFromWebServer()
        
        FetchJsons.getEventTypeFromWebServer()
        
        
    }
    
    
    func addTarBar(){
        let vc1 = View1Controller()
        let vc2 = View2Controller()
        let vc3 = View3Controller()


        SizeConfig.tabBarHeight = self.tabBar.frame.height
        
        tabBar.barTintColor = ColorConfig.selectionViewBackgroundColor
        tabBar.isTranslucent = false
        
    
        vc1.tabBarItem.image = UIImage(named: "Dollar")
        vc1.tabBarItem.title = "Calculator"
        
        vc2.tabBarItem.image = UIImage(named: "Calendar")
        vc2.tabBarItem.title = "Calendar"
        
        vc3.tabBarItem.image = UIImage(named: "Profile")
        vc3.tabBarItem.title = "Profile"
        viewControllers = [vc1, vc2, vc3]
    
    }
    
}


