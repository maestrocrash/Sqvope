//
//  Design.swift
//  Square
//
//  Created by Shakhvorostov on 10/07/2019.
//  Copyright © 2019  ShMichail. All rights reserved.
//

import Foundation
import UIKit


extension UITableViewController{
    
    
    enum colorTabBarController: UInt {
        case squape = 0xFF9500
        case volume = 0x4CD964
        case perimetr = 0x007AFF
    }
    
    func designTabBarController(color: colorTabBarController) {
        tabBarController?.tabBar.barTintColor = UIColorFromRGB(color.rawValue)
        tabBarController?.tabBar.tintColor = UIColor.white
    }
    
    func designTableView(color: colorTabBarController) {
        
        //Hide empty cell
        tableView.tableFooterView = UIView(frame: CGRect.zero)
        tableView.backgroundColor = UIColor.white
        
        //Dynamic cell
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 44.0
        tableView.rowHeight = 54
        
        //white color controller item
        navigationController?.navigationBar.barStyle = UIBarStyle.black
        
        //color navigationController
        
        navigationController?.navigationBar.barTintColor = UIColorFromRGB(color.rawValue)
        
        //navigation Controller
        
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.white]
        
        navigationController?.navigationBar.tintColor = UIColor.white
        
        navigationController?.navigationBar.backgroundColor = .black
        
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font : UIFont(name: "American Typewriter", size: 22)!]
        
        let backButton = UIBarButtonItem(title: "", style: UIBarButtonItem.Style.plain, target: self, action: #selector(UIWebView.goBack))
        
        backButton.setTitleTextAttributes([NSAttributedString.Key.font : UIFont(name: "American Typewriter", size: 18)!], for: UIControl.State())
        
        navigationItem.backBarButtonItem = backButton
        
    }
    
    
    func cellTable(id: String, index: IndexPath, in array:[Square] ) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: id, for: index)
        
        cell.textLabel?.font = UIFont(name: "American Typewriter", size: 18)
        
        cell.textLabel?.text = array[(index as IndexPath).row].name
        
        return cell
        
    }
    
    
    func cellFilling(array:[Square], index: IndexPath ){
        
        let cellArray = array[(index as IndexPath).row].id
        
        switch cellArray {
        case cellArray:
            performSegue(withIdentifier: cellArray, sender: self)
        default:
            break
        }
        
    }
    
    func allFunction(color: colorTabBarController) {
        //cellFilling(array: array, index: index)
        
        func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(false)
            
            designTabBarController(color: color)
            
        }
        
    }
}


class tableList: UITableViewController{
    var array: [Square] = []
    
    func arrayApend(list: [String]) -> [Square] {
        
        for (index, value) in list.enumerated() {
            array.append(Square(id: "\(index + 1)", name: value, title: value))
        }
        
        return array
    }
    
}






