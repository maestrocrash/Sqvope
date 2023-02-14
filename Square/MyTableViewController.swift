//
//  MyTableViewController.swift
//  Square
//
//  Created by  ShMichail on 29.01.15.
//  Copyright (c) 2015  ShMichail. All rights reserved.
//


import UIKit
import CoreSpotlight
import MobileCoreServices


class MyTableViewController: tableList {

//    var square: Square!
//
//    fileprivate var MyArray: [Square] = []
    fileprivate var searchedSongIdentifier: Int?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)

        designTabBarController(color: .squape)
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        DispatchQueue.main.async(execute: { () -> Void in
            self.tableView.reloadData()
        })
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let listOfFigures = ["Расчет площади круга","Расчет площади квадрата", "Расчет площади треугольника", "Расчет площади ромба", "Расчет площади параллелограмма", "Расчет площади прямоугольника", "Расчет площади трапеции", "Расчет площади четырехугольника", "Расчет площади шестиугольника", "Расчет площади эллипса", "Расчет площади кольца", "Расчет площади сектора круга", "Расчет площади сегмента круга"]
        array = arrayApend(list: listOfFigures)


        initSearchableItems(array: array)
        designTableView(color: .squape)
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return array.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        return cellTable(id: "MyCell", index: indexPath, in: array)
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        cellFilling(array: array, index: indexPath)
 
    }


    // MARK: - Navigation

    
    override func restoreUserActivityState(_ activity: NSUserActivity) {
        if activity.activityType == CSSearchableItemActionType {
            if let identifier = Int(activity.userInfo?[CSSearchableItemActivityIdentifier] as! String) {
                searchedSongIdentifier = identifier
                performSegue(withIdentifier: "showDetail", sender: self)
            }
        }
    }
  
    
    
}
