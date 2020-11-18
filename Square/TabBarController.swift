//
//  TabBarController.swift
//  Square
//
//  Created by  ShMichail on 21.01.15.
//  Copyright (c) 2015  ShMichail. All rights reserved.
//

import UIKit


class TabBarController: UITabBarController{
    
        override func viewDidLoad() {
      
    
            UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black], for:UIControl.State())
            UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for:.selected)
            
           
            
    }
   
}
